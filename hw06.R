##HW06
library(faraway) #this command brings in a library of regression functions
library(psych)
library(olsrr)
library(car)

head(GFCLOCKS,5L)

lmod<-lm(PRICE ~ AGE + NUMBIDS, data=GFCLOCKS)

ols_plot_resid_fit(lmod)

spreadLevelPlot(lmod,robust.line=FALSE,grid=TRUE,smooth=TRUE)

ols_plot_resid_stud(lmod)

ols_plot_resid_stand(lmod)

ols_plot_resid_lev(lmod)

ols_plot_resid_stud_fit(lmod)

ols_plot_cooksd_chart(lmod)

ols_plot_dfbetas(lmod)

ols_plot_dffits(lmod)

ols_plot_hadi(lmod)

ols_plot_resid_pot(lmod)