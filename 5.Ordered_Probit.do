*** import the merged dataset ***
use "C:\Users\...\PCA_Merge.dta"

**Section 6**
*** Estimation of Ordered Probit Model***
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30

**Section 7**
*** 7.1 Estimation of Ordered Probit on Different Genders *** 
**** Estimation of Ordered Probit on Male****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a2==1
**** Estimation of Ordered Probit on Female****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a2==2

*** 7.2 Estimation of Ordered Probit of Differnet Religion *** 
**** Estimation of Ordered Probit on people with religion****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a501==1
**** Estimation of Ordered Probit on people without religion****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a501==0

*** 7.3 Estimation of Ordered Probit of Different Martial Status***
**** Estimation of Ordered Probit on unmarried people ****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a69==1|a69==2|a69==6|a69==7
**** Estimation of Ordered Probit on married people ****
oprobit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30 if a69==3|a69==4|a69==5

**Section 8**
*** Estimation of Ordered Logit Model ***
ologit a35 rc1 rc2 rc3 rc4 rc5 rc7 rc6 rc8 rc9 rc10 ///
prov1 prov2 prov3 prov4 prov5 prov6 prov7 prov8 prov9 prov10 ///
prov11 prov12 prov13 prov14 prov15 prov16 prov17 prov18 prov19 ///
prov21 prov22 prov23 prov24 prov26 prov27 prov28 prov29 prov30



