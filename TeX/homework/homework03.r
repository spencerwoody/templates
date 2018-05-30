###########################################################
######### Created by Spencer Woody on 20 Aug 2016 #########
###########################################################

a <- 1
b <- 1

sumofy <- 325
n <- 250

ahat <- 1 + 325
bhat <- 1 + n

# Part a
lower1 = qgamma(0.025, ahat, bhat)
upper1 = qgamma(0.975, ahat, bhat)
sprintf('Our 95%% credible interval is (%f, %f)',lower1, upper1)

# Part b
samples = rgamma(250, ahat, bhat)
lower2 = quantile(samples, 0.025)
upper2 = quantile(samples, 0.975)
sprintf('Our 95%% credible interval is (%f, %f)', lower2, upper2)

# Part c
MLE = sumofy / n
print(MLE)

# END