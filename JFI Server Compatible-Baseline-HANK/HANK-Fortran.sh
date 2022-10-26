
# -ffree-line-length-512 avoids errors of long lines

gfortran -c Parameters.f90 Globals.f90 umfpack.f90 Procedures.f90 -ffree-line-length-512

gfortran -c AllocateArrays.f90 -ffree-line-length-512

gfortran -c SetParameters.f90 -ffree-line-length-512

gfortran -c Grids.f90 -ffree-line-length-512

gfortran -c IterateBellman.f90 -ffree-line-length-512

gfortran -c HJBUpdate.f90 -ffree-line-length-512

gfortran -c cumnor.f90 -ffree-line-length-512

gfortran -c rtsec.f90 StationaryDistribution.f90 SaveSteadyStateOutput.f90 -ffree-line-length-512

gfortran -c  DistributionStatistics.f90 rtbis.f90 rtflsp.f90 -ffree-line-length-512

gfortran -c  InitialSteadyState.f90 FinalSteadyState.f90 SolveSteadyStateEqum.f90 -ffree-line-length-512

gfortran -c Calibration.f90 MomentConditions.f90 dfovec.f90 newuoa-h.f newuob-h.f -ffree-line-length-512

gfortran -c update.f trsapp-h.f biglag.f bigden.f mnbrak.f90 golden.f90 sort2.f90 -ffree-line-length-512

gfortran -c CumulativeConsumption.f90 FnDiscountRate.f90 OptimalConsumption.f90 FnHoursBC.f90 -ffree-line-length-512

gfortran -c ImpulseResponses.f90 IRFSequence.f90 Transition.f90 -ffree-line-length-512

gfortran -c SaveIRFOutput.f90 IterateTransitionStickyRb.f90 IterateTransOneAssetStickyRb.f90 -ffree-line-length-512

gfortran -c FnCapitalEquity.f90 CumulativeConsTransition.f90 -ffree-line-length-512

gfortran -c DiscountedMPC.f90 DiscountedMPCTransition.f90 -ffree-line-length-512

gfortran -c Main.f90

export LD_LIBRARY_PATH=/home/JFI-AD/rajarshi.datta/Baseline-HANK/HANK-Fortran/lib

#(check if working. No need to set dynamic library path in that case)
gfortran -o Main Main.f90 Parameters.o Globals.o umfpack.o Procedures.o \
AllocateArrays.o SetParameters.o Grids.o IterateBellman.o HJBUpdate.o cumnor.o \
rtsec.o StationaryDistribution.o SaveSteadyStateOutput.o DistributionStatistics.o \
rtbis.o rtflsp.o InitialSteadyState.o FinalSteadyState.o SolveSteadyStateEqum.o \
Calibration.o MomentConditions.o dfovec.o newuoa-h.o newuob-h.o update.o trsapp-h.o \
biglag.o bigden.o mnbrak.o golden.o sort2.o  CumulativeConsumption.o  FnDiscountRate.o  \
OptimalConsumption.o FnHoursBC.o ImpulseResponses.o IRFSequence.o Transition.o  \
SaveIRFOutput.o IterateTransitionStickyRb.o IterateTransOneAssetStickyRb.o \
FnCapitalEquity.o CumulativeConsTransition.o DiscountedMPC.o DiscountedMPCTransition.o \
-L/home/JFI-AD/rajarshi.datta/Baseline-HANK/HANK-Fortran/lib -lumfpack -lamd -lcholmod -lcolamd \
-lcamd -lmetis -lccolamd -lsuitesparseconfig -lblas #-lopenblas 



./Main

cd .. 
zip -r Baseline-HANK.zip HANK-Fortran/
mv Baseline-HANK.zip /home/JFI-AD/rajarshi.datta


