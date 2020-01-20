clear all
version 15
cd "/Users/zonglinli/Downloads/FinalProject/"

use "/Users/zonglinli/Downloads/FinalProject/cgss2012_14.dta"
gen a43ab = a43a - a43b
keep a35 id a2 s5a s5b s6 a4 a501 a7a a8a a10 a15 a17 a18 a29 a422 ///
a43ab a43c a44 a45 a46 a47 a48 a58 ///
a611 a612 a613 a614 a62 a64 a69 a89b a90b ///
n103 n3c n1501 n1502 n1503 n1504 n1603 n1604 n1605 n1606 ///
n1608 n1609 n1611 n1612 n1613 n1614 n1616 p116 



order a35 id a2 s5a s5b s6 a4 a501 a7a a8a a10 a15 a17 a18 a29 a422 ///
a43ab a43c a44 a45 a46 a47 a48 a58 ///
a611 a612 a613 a614 a62 a64 a69 a89b a90b ///
n103 n3c n1501 n1502 n1503 n1504 n1603 n1604 n1605 n1606 ///
n1608 n1609 n1611 n1612 n1613 n1614 n1616 p116 

save "Data_1.0.dta", replace

foreach checkvar of varlist a35 id a2 s5a s5b s6 a4 a501 a7a a8a a10 a15 a17 a18 a29 a422 ///
a43ab a43c a44 a45 a46 a47 a48 a58 ///
a611 a612 a613 a614 a62 a64 a69 a89b a90b ///
n103 n3c n1501 n1502 n1503 n1504 n1603 n1604 n1605 n1606 ///
n1608 n1609 n1611 n1612 n1613 n1614 n1616 p116 {
	su `checkvar'
	replace `checkvar' =. if `checkvar' < 0
	} 

su a35 id a2 s5a s5b s6 a4 a501 a7a a8a a10 a15 a17 a18 a29 a422 ///
a43ab a43c a44 a45 a46 a47 a48 a58 ///
a611 a612 a613 a614 a62 a64 a69 a89b a90b ///
n103 n3c n1501 n1502 n1503 n1504 n1603 n1604 n1605 n1606 ///
n1608 n1609 n1611 n1612 n1613 n1614 n1616 p116 

replace a62 = . if a62 == 9999998
replace a62 = . if a62 == 9999997
replace a62 = . if a62 == 9999999
replace a8a = . if a8a == 9999997
replace a8a = . if a8a == 9999998
replace a8a = . if a8a == 9999999
save "Data_1.0.dta", replace
*a62 = 9999996; a8a = 9999996 means the wage is higher than 1,s000,000.


*standardize a8a & a62

egen std_a8a = std(a8a) 
egen std_a62 = std(a62) 
su std_a8a std_a62
drop a8a a62
order a35 id a2 s5a s5b s6 a4 a501 a7a std_a8a a10 a15 a17 a18 a29 a422 ///
a43ab a43c a44 a45 a46 a47 a48 a58 ///
a611 a612 a613 a614 std_a62 a64 a69 a89b a90b ///
n103 n3c n1501 n1502 n1503 n1504 n1603 n1604 n1605 n1606 ///
n1608 n1609 n1611 n1612 n1613 n1614 n1616 p116 

save "Data_1.0.dta", replace
