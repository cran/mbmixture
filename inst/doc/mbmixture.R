## ----knitr_options, include=FALSE---------------------------------------------
library(knitr)
opts_chunk$set(fig.width=7, fig.height=4.5,
               dev.args=list(pointsize=16))
scipen <- getOption("scipen")
options(scipen=10)

## ----load_lib_and_data--------------------------------------------------------
library(mbmixture)
data(mbmixdata)

## ----print_data---------------------------------------------------------------
mbmixdata

## ----calc_loglik--------------------------------------------------------------
mbmix_loglik(mbmixdata, p=0.74, e=0.002)

## ----calc_mle-----------------------------------------------------------------
(mle <- mle_pe(mbmixdata))

## ----calc_mle_with_ses--------------------------------------------------------
(mle_w_SE <- mle_pe(mbmixdata, SE=TRUE))

## ----grab_SEs-----------------------------------------------------------------
attr(mle_w_SE, "SE")

## ----bootstrap, eval=FALSE----------------------------------------------------
# bootstrap_se <- bootstrapSE(mbmixdata, 1000)

## ----bootstrap_result, echo=FALSE---------------------------------------------
c(p = 0.000351360951177482, err = 0.0000272304773558442)

## ----mle_p_and_mle_e----------------------------------------------------------
mle_p(mbmixdata, e=0.002)
mle_e(mbmixdata, p=0.74)

## ----reset_options, echo=FALSE------------------------------------------------
options(scipen=scipen)

