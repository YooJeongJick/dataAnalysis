# [상세설명]
# - 강의슬라이드에 있는 코드를 구현하여 실행되도록 작업하여 제출 (오늘은 문제해결 없이 실습코드만 작업하여 제출)
# - 한 줄 씩 실행할 때에는 실행할 코드를 클릭하여 커서를 이동시킨 후 오른쪽 위 Run 버튼 누르기
# - 전체를 한 번에 다 실행할 때에는 Ctrl + Alt + R 을 눌러 전체 실행하기

## (1) Prepare Data ----------------------

library(mlbench)
data("BostonHousing")
myds <- BostonHousing[ , c("crim", "rm", "dis", "tax", "medv")]

## (2) Add new column ----------------------
grp <- c()
for (i in 1:nrow(myds)) { 	         # myds$medv 값에 따라 그룹 분류

if (myds$medv[i] >= 25.0) {
   grp[i] <- "H"
   } else if (myds$medv[i] <= 17.0) {
   grp[i] <- "L"
   } else {
   grp[i] <- "M"
   }
}

grp <- factor(grp)
grp <- factor(grp, levels = c("H", "M", "L"))

myds <- data.frame(myds, grp)

## (3) Add new column ----------------------

str(myds)
head(myds)
table(myds$grp)

## (4) histogram ----------------------
par(mfrow=c(2,3)) 			# 2x3 가상화면 분할
for(i in 1:5) {
  hist(myds[ , i], main = colnames(myds)[i], col = 'yellow')
}
par(mfrow=c(1,1)) 			# 2x3 가상화면 분할 해제

## (5) boxplot ----------------------
par(mfrow=c(2,3)) 			# 2x3 가상화면 분할
for(i in 1:5) {
  boxplot(myds[ , i], main = colnames(myds)[i])
}
par(mfrow=c(1,1)) 			# 2x3 가상화면 분할 해제

## (6) boxplot by group ------------------
boxplot(myds$crim ~ myds$grp, main = "1인당 범죄율")
boxplot(myds$rm ~ myds$grp, main = "방의 수")
boxplot(myds$dis ~ myds$grp, main = "직업센터까지의 거리")
boxplot(myds$tax ~ myds$grp, main = "제산세")

## (7) scatter plot ------------------
pairs(myds[ , -6])

## (8) scatter plot with group ------------------
point <- as.integer(myds$grp)
color <- c("red", "green", "blue")
pair(myds[ , -6], pch = point, col = color[point])

## (9) correlation coefficient ------------------
cor(myds[ , -6])