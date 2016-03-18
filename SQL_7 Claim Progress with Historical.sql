set DATEFIRST 7;

SELECT
	cd.Date
	,p.ReinsuranceYear
	,pd.ProductName
	,st.St_Name AS State
	,dt.DateTypeName
	,count(distinct clm.ClaimNumber) AS [ClaimCount]
	,SUM(csp.TotalIndemnity) AS [Indemnity]
FROM 
	Claim clm
	JOIN Policy p on p.PolicyId = clm.PolicyId and p.EndDate is null and p.ReinsuranceYear IN (@ReinsuranceYear)
	JOIN ProductState ps on ps.ProductStateId = p.ProductStateId and ps.EndDate is null
	JOIN Product pd on pd.ProductId = ps.ProductId and pd.ProductId in (@Product)
	JOIN tblStates st on st.St_FIPS = ps.StateId and ps.StateId in (@State)
	JOIN ClaimSpec csp on csp.ClaimId = clm.ClaimId and csp.ClaimSpecId = (SELECT MAX(claimspecid) from ClaimSpec where ClaimId = clm.ClaimId)
	JOIN ClaimDate cd on cd.ClaimId = clm.ClaimId and cd.EndDate is null
	JOIN DateType dt on dt.DateTypeId = cd.DateTypeId and cd.DateTypeId IN (@DateType)

WHERE clm.EndDate is null
GROUP BY
	cd.Date
	,p.ReinsuranceYear
	,pd.ProductName
	,St.St_Name
	,dt.DateTypeName
ORDER BY
	cd.Date
	,p.ReinsuranceYear
	,pd.ProductName
	,st.St_Name
	,dt.DateTypeName	
			
DECLARE @DateFrom DATE
SET @DateFrom = '2013-01-01'

DECLARE @DateTo DATE
SET @DateTo = getutcdate()

WITH DateRanges AS
(
    SELECT @DateFrom AS 'DateValue'
    UNION ALL
    SELECT DATEADD(DAY, 1, DateValue)
    FROM DateRanges
    WHERE DateValue &lt; @DateTo
)
SELECT * from DateRanges
option (maxrecursion 0)

SELECT distinct
	p.PolicyNumber
	,clm.ClaimNumber
	,cst.StatusName AS Status
	,pd.ProductName
	,St.St_Name AS State
	,a.Ag_Agency AS Agency
	,sup.Ct_CoName AS Supervisor
	,isnull(adj.ct_coname,'Unassigned') AS Adjuster
	,RIGHT('00' + CONVERT(VARCHAR, st.St_FIPS), 2)+RIGHT('000' + CONVERT(VARCHAR, cts.cs_FIPS), 3) AS FIPS
	,dd.Date AS DamageDate
	,nd.Date AS NoticeDate
	,aa.Date AS AdjAssignedDate
	,ac.Date AS AdjCompleteDate
	,ino.Date AS InOfficeDate
	,ina.Date AS InAccountingDate
	,cc.Date AS ClaimClosedDate
	,cd.date AS ClaimDeniedDate,

case cs.StatusId
when 3 then DATEDIFF(DAY,nd.Date,GETDATE())
else NULL
	end AS CurrentAdjTime
	,cs.EstimatedAcres AS EstimatedAcresDamaged
	,sv.SeverityName AS Severity
	,csp.CoveragePerAcre AS InsurancePerAcre

FROM 
	Coverage c
	INNER JOIN CoverageSpec csp on csp.Coverageid = c.coverageid and CoverageSpecId = (select MAX(CoverageSpecId) from CoverageSpec where CoverageId = c.CoverageId)
	INNER JOIN Policy p on p.PolicyId = c.PolicyId and p.EndDate is null and p.ReinsuranceYear in (@ReinsuranceYear)
	INNER JOIN Claim clm on clm.policyid = p.policyid and clm.enddate is null
	INNER JOIN ClaimSpec cs on cs.ClaimId = clm.ClaimId and cs.ClaimSpecId = (select MAX(claimSpecid) from ClaimSpec where ClaimId = clm.ClaimId) and cs.CropId = csp.CropId and cs.CountyId = csp.CountyId
	INNER JOIN ClaimStatus cst on cst.StatusId = cs.StatusId
	INNER JOIN PolicyAgency pa on pa.policyid = p.policyid and pa.PolicyAgencyId = (select MAX(PolicyAgencyId) from PolicyAgency where policyid = p.PolicyId)
	INNER JOIN tblAgency a on a.ag_id = pa.agencyid and a.Ag_Agency in (@Agency)
	JOIN Product pd on pd.ProductId = ps.ProductId and pd.ProductId in (@Product)
	INNER JOIN tblStates st on st.St_FIPS = ps.StateId and st.St_FIPS in (@State)
	INNER JOIN tblCounties cts on cts.Cs_ID = cs.countyid and cts.Cs_StFIPS = st.St_FIPS
	INNER JOIN tblClient sup on sup.Ct_ID = cs.SupervisorId and sup.Ct_id in (@Supervisor)
	LEFT JOIN tblClient adj on adj.Ct_ID = cs.AdjusterId and adj.Ct_id IN (@Adjuster)
	INNER JOIN Crop crop on crop.CropId = cs.CropId
	INNER JOIN ClaimSeverity sv on sv.SeverityId = cs.SeverityId
	INNER JOIN ClaimDate dd on dd.ClaimId = clm.ClaimId and dd.EndDate is null and dd.DateTypeId = 6 and dd.Date = (select MIN(Date) from ClaimDate where ClaimId = clm.ClaimId and DateTypeId = 6)
	INNER JOIN ClaimDate nd on nd.ClaimId = clm.ClaimId and nd.EndDate is null and nd.DateTypeId = 7 and nd.Date = (select MIN(Date) from ClaimDate where ClaimId = clm.ClaimId and DateTypeId = 7)
	LEFT JOIN ClaimDate aa on aa.claimId = clm.ClaimId and aa.EndDate is null and aa.DateTypeId = 18 and aa.Date = (select MAX(Date) from ClaimDate where ClaimId = clm.ClaimId and DateTypeId = 18)
	LEFT JOIN ClaimDate ac on ac.claimId = clm.ClaimId and ac.EndDate is null and ac.DateTypeId = 9
	LEFT JOIN ClaimDate ino on ino.claimId = clm.ClaimId and ino.EndDate is null and ino.DateTypeId = 12
	LEFT JOIN ClaimDate ina on ina.claimId = clm.ClaimId and ina.EndDate is null and ina.DateTypeId = 13
	LEFT JOIN ClaimDate cc on cc.claimId = clm.ClaimId and cc.EndDate is null and cc.DateTypeId = 14
	LEFT JOIN ClaimDate cd on cd.claimId = clm.ClaimId and cd.EndDate is null and cd.DateTypeId = 15

WHERE c.EndDate is null and clm.ClaimNumber NOT LIKE '%P%'
ORDER BY clm.ClaimNumber
	
select distinct 
	c.ct_id AS SupervisorId
	,c.ct_coname AS Supervisor 
from 
	ClaimSpec cs
	inner join tblClient c 
	on c.ct_id = cs.supervisorid
	order by c.ct_coname

select distinct 
	c.ct_id AS AdjusterId
	, c.ct_coname AS Adjuster 
from 
	tblClient c
	inner join 
	ClaimSpec cs on cs.adjusterid = c.ct_id
	order by c.ct_coname
