#ü��
wt = c(64,66,70, 72,81,64, 74,51,65, 65,63,58, 
       57,43,52, 47,58,67, 59,68,65, 66,71,59,
       58,39,42, 42,58,41, 46,57,61, 53,59,38)
#���
sa =c(1,1,1, 1,1,1, 1,1,1,
      2,2,2, 2,2,2, 2,2,2,
      3,3,3, 3,3,3, 3,3,3,
      4,4,4, 4,4,4, 4,4,4)
#ǰ��
pum = c(1,1,1, 2,2,2, 3,3,3,
        1,1,1, 2,2,2, 3,3,3,
        1,1,1, 2,2,2, 3,3,3,
        1,1,1, 2,2,2, 3,3,3)

pig.wt =data.frame(sa, pum, wt)

#������ ������ �ϰ�, �� ����
pig.wt$sa = factor(pig.wt$sa, 
            levels=c(1,2,3,4),
            labels=c("A1","A2","A3","A4"))
pig.wt$pum = factor(pig.wt$pum,
            levels=c(1,2,3),
            labels=c("B1","B2","B3"))

boxplot(wt~sa*pum,data=pig.wt,
    ylab="pig weight",
    main="���� ǰ���� boxplot")


boxplot(wt~pum, data=pig.wt,
        ylab="pig weight",
        main="ǰ���� boxplot")


boxplot(wt~sa,data=pig.wt,
        ylab="pig weight",
        main="��Ằ boxplot")



aov.out = aov(wt~sa*pum,data=pig.wt)
summary(aov.out)