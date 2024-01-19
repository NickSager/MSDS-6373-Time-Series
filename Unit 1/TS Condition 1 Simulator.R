# Wandering Data

num_realizations = 1000

a = gen.arma.wge(100,.9, plot = FALSE)
plot(seq(1,100,1),a, type = "l", ylim = c(-6,6))
aa = gen.arma.wge(100,.9, plot = FALSE)
lines(aa)


realizationHolder = matrix(nrow = num_realizations, ncol = 100)

for( i in 1:num_realizations)
{
a = gen.arma.wge(100,.9, plot = FALSE)
lines(a)
realizationHolder[i,] = a
}

means_t = colMeans(realizationHolder,na.rm = TRUE)
lines(means_t, col = "yellow",lwd = 4)




# Sinusoidal Data

num_realizations = 1000

t = seq(0,10*pi,.1)
xt = sin(t) + rnorm(length(t),0,.11)
plot(t,xt, type = "l")



xt2 = sin(t) + rnorm(length(t),0,.11)
lines(t,xt2)


realizationHolder = matrix(nrow = num_realizations, ncol = length(t))

for( i in 1:num_realizations)
{
  xt2 = sin(t) + rnorm(length(t),0,.11)
  lines(t,xt2)
  realizationHolder[i,] = xt2
}

means_t = colMeans(realizationHolder,na.rm = TRUE)
lines(t,means_t, col = "yellow",lwd = 4)


#Look distriubutions of Xt for fixed t.
hist(realizationHolder[,5])
