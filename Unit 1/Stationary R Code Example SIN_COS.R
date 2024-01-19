H = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)
I = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)
J = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)

plot(H, type = "l")
lines(I, col = "blue")
lines(J, col = "red")

H = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)
I = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)
J = gen.sigplusnoise.wge(100,  coef = c(.4,0), freq = c(.2,0), psi = rep(.3,100),vara = .01)

plot(H, type = "l")
lines(I, col = "blue")
lines(J, col = "red")