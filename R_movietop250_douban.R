# movie.douban.com/top250?format=text
url<-'http://movie.douban.com/top250?format=text'

# 获取网页原代码，以行的形式存放在web变量中
web <- readLines(url,encoding="UTF-8")
for(i in 1:9){
  url1<-paste('http://movie.douban.com/top250?start=',25*i,
              '&filter=&type=',sep="")
  web1 <- readLines(url1,encoding="UTF-8")
  web<-c(web,web1)
}

# 找到包含电影名称的行编号
name <- web[grep(' <div class="hd">',web)+2]

# 用正则表达式来提取电影名
getcontent <- function(s,g) {
  substring(s,g,g+attr(g,'match.length')-1)
}
# 匹配汉字字母数字点号空格
gregout <- gregexpr('>[\u4e00-\u9fa5a-zA-Z0-9. ]+',name)

movie.names = 0
for (i in 1:250) {
  movie.names[i] <-getcontent(name[i],gregout[[i]])
}
movie.names <- sub('>','',movie.names)

# 找到包含电影发行年份的行编号并进行提取
year <- web[grep('<br>',web)+1]
year <- gsub('^[about ]','',substr(year,28,32))
movie.year <- year[grep('[0-9]+',year)]

# 找到包含电影评分的行编号并进行提取
score <- web[grep('<div class="star">',web)+1]
gregout <-gregexpr('[0-9].[0-9]',score)
movie.score = 0
for (i in 1:250) {
  movie.score[i] <-getcontent(score[i],gregout[[i]])
}

# 找到包含电影评价数量的行编号并进行提取
rating <- web[grep('<div class="star">',web)+2]
gregout <-gregout <-gregexpr('[0-9]+',rating)

movie.rating = 0
for (i in 1:250) {
  movie.rating[i] <-getcontent(rating[i],gregout[[i]])
}

# 合成为数据框
movie <- data.frame(names=movie.names,year=as.numeric(movie.year),
                    score=as.numeric(movie.score),rate=as.numeric(movie.rating))
# 绘散点图
library(ggplot2)
p <- ggplot(data=movie,aes(x=year,y=score))
p+geom_point(aes(size=rate),colour='lightskyblue4',
             position="jitter",alpha=0.8)+
  geom_point(aes(x=1997,y=8.4),colour='red',size=4)