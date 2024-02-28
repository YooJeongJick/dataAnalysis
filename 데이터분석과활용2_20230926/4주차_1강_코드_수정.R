score <- matrix(c(90, 70, 50,
                  70, 90, 100,
                  80, 60, 60),
                nrow = 3, ncol =3)

colnames(score) <- c('국어', '수학', '영어')
score

mean(score[ , 1])
mean(score[ , 2])
mean(score[ , 3])

mean(score[ , '국어'])
mean(score[ , '수학'])
mean(score[ , '영어'])

iris[10 : 13, c(2 : 4)]
mean(iris[10 : 13, c(2)])
sd(iris[10 : 13, c(2)])
