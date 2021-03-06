load("data/wd.Rdata")
nwd = wd

#if x2 is lower than 0.11, set 99
nwd[nwd$x2 < 0.11, "x2"] = 99
#if nwd == 99, the value be NA
nwd[nwd == 99] = NA
nwd



# if val > 0.9, NA
nwd[nwd > 0.9] = 99
nwd[nwd == 99] =NA
nwd

#행, 열 결측치 갯수
rowSums(is.na(nwd))
colSums(is.na(nwd))


#NA 결측치 제거
mywd = na.omit(nwd)
head(mywd)


#6번쨰 변수 이름을 ny
names(nwd)[6] ="ny"
head(nwd)

#전체 변수명 바꾸기
colnames(nwd) = c("a1", "a2", "a3", "a5", "new")
head(nwd)
