score = read.csv("data/score.csv", header = T)
head(score)
dim(score)

score$total = score$midterm + score$final
head(score)


#�����, 1:2���� ������ ����(id, gender�� �ʿ� x)
#sd ǥ�� ������ ���ϰ� ����ġ ����
sapply(score[,-c(1:2)], sd, na.rm=TRUE)
sapply(score[,-c(1:2)], mean, na.rm=TRUE)


#������ ������ ���. 1��° ������ ����
# �ټ� ��ġ���(min, q1, median, q3, max)
summary(score[,-1])


#Ŭ���� ����
class(score$gender)
class(score$midterm)
class(score$total)

#�ټ���ġ����
fivenum(score$total)





#psych�� �����跮 �����
install.packages("psych")
library(psych)




describe(score[,-c(1:2)])

Dscore = describe(score[,-c(1:2)])

names(Dscore)
