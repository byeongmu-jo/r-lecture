library(ggplot2)
library(dplyr)
library(plyr)
library(gridExtra)


str(anscombe)
ans_x_mean <- anscombe %>%
  select(x1,x2,x3,x4) %>%
  summarise_each(list(mean),x1,x2,x3,x4)
ans_x_mean

ans_y_mean <- anscombe %>%
  select(y1,y2,y3,y4) %>%
  summarise_each(list(mean),y1,y2,y3,y4)
ans_y_mean

ans_x_var <- anscombe %>%
  select(x1,x2,x3,x4) %>%
  summarise_each(list(var),x1,x2,x3,x4)
ans_x_var

ans_y_var <- anscombe %>%
  select(y1,y2,y3,y4) %>%
  summarise_each(list(var),y1,y2,y3,y4)
ans_y_var

p1<- ggplot(anscombe) +
  geom_point(aes(x=x1, y=y1), color="darkorange",size=3) +
  theme_bw() +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,20,2)) +
  geom_abline(intercept = 3, slope = 0.5, color="cornflowerblue")+
  expand_limits(x=0, y=0) +
  labs(title = "dataset 1")

p2<- ggplot(anscombe) +
  geom_point(aes(x=x2, y=y2), color="darkorange",size=3) +
  theme_bw() +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,20,2)) +
  geom_abline(intercept = 3, slope = 0.5, color="cornflowerblue")+
  expand_limits(x=0, y=0) +
  labs(title = "dataset 2")

p3<- ggplot(anscombe) +
  geom_point(aes(x=x3, y=y3), color="darkorange",size=3) +
  theme_bw() +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,20,2)) +
  geom_abline(intercept = 3, slope = 0.5, color="cornflowerblue")+
  expand_limits(x=0, y=0) +
  labs(title = "dataset 3")

p4<- ggplot(anscombe) +
  geom_point(aes(x=x4, y=y4), color="darkorange",size=3) +
  theme_bw() +
  scale_x_continuous(breaks = seq(0,20,2)) +
  scale_y_continuous(breaks = seq(0,20,2)) +
  geom_abline(intercept = 3, slope = 0.5, color="cornflowerblue")+
  expand_limits(x=0, y=0) +
  labs(title = "dataset 4")



par(mfrow=c(2,2))

grid.arrange(p1,p2,p3,p4)





































































