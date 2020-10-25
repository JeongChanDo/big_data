n=100000
#X1, ��� 1, �л�1 ���Ժ���
#X2, ��� 2, �л� 1 ���Ժ���
X1 = rnorm(n,1,1); X2=rnorm(n,2,1)
#SX, ��� 3, �л� 1 ���Ժ���
SX = X1 + X2
plot(density(SX, bw=0.8), xlim=c(-4,9), ylim=c(0,0.35), main="", xlab="")


lines(density(X1,bw=0.8), lty=2, col=4)
lines(density(X2, bw=0.8), lty=2, col=2)
legend("topright", c(expression(X[1] + X[2]), expression(X[1]), expression(X[2])), lty=c(1,2,2), col=c(1,4,2))