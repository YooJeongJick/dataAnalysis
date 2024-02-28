score <- matrix(c
                (90, 85, 69, 78,
                  85, 96, 49, 95,
                  90, 80, 70, 60),
                nrow = 4, ncol = 3)
score
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English', 'Math', 'Science')
score

score['John', 'Math']
score['Tom', c('Math', 'Science')]
score['Mark', ]
score[ , 'English']
rownames(score)
colnames(score)
colnames(score)[2]
