frame()

theta <- seq(-pi, pi, length=100)
plot(cos(theta), sin(theta), type='l', asp=1, axes=F, ann=F)
rect(-1,1,1,-1)

correct <- 0
incorrect <- 0
repeat {
  x <- runif(1,-1,1)
  y <- runif(1,-1,1)
  points(x,y, pch=16, col='blue', cex=2)
  if (x^2+y^2 < 1) {
    correct <- correct + 1
  } else {
    incorrect <- incorrect + 1
  }
  cat('\n### Probability ###\n')
  cat(paste('correct: ', correct, '\n'))
  cat(paste('incorrect: ', incorrect, '\n'))
  p <- 4 * correct/(correct+incorrect)
  print(p)

  if (p >= 3.1415 && p < 3.1416)  readline()
}
