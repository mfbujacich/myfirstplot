library(ggplot2)
normed <- rnorm(n=100,0,1)

normed.df <- as.data.frame(normed);
normed.df$var <- "0"
names(normed.df)<- c("normal","var")

normed <- rnorm(n=100,10,1)

normed.df2 <- as.data.frame(normed);
normed.df2$var <- "10"
names(normed.df2)<- c("normal","var")

hist(normed.df$normal)

joined <- rbind(normed.df, normed.df2)

ggplot(data=joined) +
  geom_density(aes(x=normal,group=var,fill=var))
