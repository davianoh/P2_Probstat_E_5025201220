# Nama : Davian Benito 
# Nrp : 5025201220
# Soal 1
# 1a
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
selisih <- abs(x-y)
sd(selisih)

# 1b
t.test(x, y, alternative = "two.sided", paired = TRUE, conf.level = 0.95)

# ------------------------------------------------------ #

# Soal 2
install.packages("BSDA")
library(BSDA)
# Soal 2b 
tsum.test(mean.x=23500, s.x=3900, n.x=100, mu=20000, alternative = "greater")

# ------------------------------------------------------ #

# Soal 3
# soal 3a
z_h0 <- (3.64 - 0) / (1.67 / sqrt(19))
z_h0
z_h1 <- (2.79 - 0) / (1.32 / sqrt(27))
z_h1

# soal 3b 
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)

# soal 3c
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="blue")

# soal 3d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# ------------------------------------------------------ #

#4
#4A
dataoneway <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),h=T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "Kucing Oren")
Group2 <- subset(dataoneway, Group == "Kucing Hitam")
Group3 <- subset(dataoneway, Group == "Kucing Putih")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

#4B
bartlett.test(Length ~ Group, data = dataoneway)

#4C
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

#4E
TukeyHSD(aov(model1))

#4F
install.packages("ggplot2")
library("ggplot2")
ggplot(dataoneway, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "grey80", colour = "black") +
  scale_x_discrete() + xlab("Treatment Group") +
  ylab("Length (cm)")

# ------------------------------------------------------ #

#No. 5
install.packages("readr")
library(readr)
GTL <- read_csv("GTL.csv")
head(GTL)
str(GTL)

#5A
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#5B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
  
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#5C
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

#5D
tukey <- TukeyHSD(anova)
print(tukey)

#5E
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
write.csv("GTL_summary.csv")
