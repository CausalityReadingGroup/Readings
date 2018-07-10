#Section 3.2 on Interventions, page 35

set.seed(1)
# generates a sample from the distribution entailed by the SCM
C <- rnorm(300)
E <- 4*C + rnorm(300)
c(mean(E), var(E))

# generates a sample from the intervention distribution do(C:=2); this changes the distribution of E
C <- rep(2,300)
E <- 4*C + rnorm(300)
c(mean(E), var(E))

# generates a sample from the intervention distribution do(E:=N~); this breaks the dependence between C and E
C <- rnorm(300)
E <- rnorm(300)
cor.test(C,E)$p.value

#3.5 Problems, page ??

#Problem 3.5
Y <- rnorm(200)
X <- Y^2 + rnorm(200)
c(mean(X), var(X))

