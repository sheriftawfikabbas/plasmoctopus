# PlasmOctopus
PlasmOctopus is a modified time-dependent density functional theory implementation of the quantum plasmonics calculation, written in `fortran 90` as a contribution to the Octopus code.


# Installation

You can install PlasmOctopus simply by over-writing the file src/td/td.F90 of Octopus, and compiling/installing Octopus as normal. The currently supported version of Octopus is 10.1.

# Directory structure

The PlasmOctopus code is composed of the following file:

```
td.F90: Contains the updated code that supports additional tags for the calculation of plasmonic modes. Note that it is not a postprocessing tool; the computation of the plasmonic modes is performed during the time propagation.
```

# How to use

To use PlasmOctopus, you need to specify the following tags:
- PlasmonicsGamma: a floating point number in energy units, which sets the value of \gamma.
- PlasmonicsOmegas: a block of floating point numbers in energy units, which set the values of \omega, which are the plasmonic resonance energies.

These tags will only be recognized when you place them in the `inp` with the `CalculationMode = td`.

For example, to calculate the plasmonic modes of the Na18 atomic chain in the provide example, the following tags are entered:

```
PlasmonicsSigma = 0.07*eV
%PlasmonicsOmegas
        0.49*eV
        1.18*eV
        1.66*eV
        3.1*eV
        3.52*eV
%

```


