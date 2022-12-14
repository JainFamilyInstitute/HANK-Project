# HANK-Project
For Modifying Taylor Rule of the baseline HANK model of KMV (2018) to answer the Fed Framework Review


This document describes the computing steps to run the model version and specific lines of code changed to extend the baseline model. 

Running Fortran 
1.	After logging into the JFI server, change directory to Baseline-HANK by  “cd Baseline-HANK/”.

2.	(Optional Step) To change parameters and run options, edit “SetParameters.f90”.

3.	Type “bash HANK-Fortran.sh” to execute. Entire output is produced in folder “FortranOutputDir”.

4.	If required, set library path on line 40 of “HANK-Fortran.sh” 

5.	All the output is saved as text files in the folder “FortranOutputDir” (will be created automatically). A zip is created Baseline-HANK.zip that has all the code files as well as the output. 

Running Matlab
1.	Copy the output directory “FortranOutputDir” in the folder “Matlab-JFI-Server-Fortran-Output”.

2.	Run “Matlab-Main.m” to produce all the required tables and graphs

3.	Rename figures name and comparison of moments from baseline version in lines 24 and 39 of “Matlab-Main.m”. As of now, the target is how different are moments from the ones recorded in Table 7 on modifying the code as described in the next section.

4.	Separate directories will be automatically created for steady state results and transition dynamics results. 

Modification of baseline code
1.	To modify Taylor Rule, edit “IterateTransitionStickyRb.f90”. 

2.	Taylor Rule is specified in lines 262-274 for both forward guidance and normal monetary policy shock. 

3.	In line 264, the new Taylor Rule can be added to include aggregate employment deviations from steady state.




