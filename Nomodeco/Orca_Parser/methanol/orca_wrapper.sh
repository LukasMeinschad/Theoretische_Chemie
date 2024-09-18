#!/bin/bash


# purge and reload nessecary modules
module purge
module load orca/6.0.0


inpfile=$1

workdir=$(pwd)

timestamp=$(date +%Y%m%d_%H%M)


## Ordner in Scratch erstellen

mkdir -p /scratch/$USER/orca/tmpdir_$$


#echo 'Scratch directory was created'
### inp und ev. xyz in scratch kopiern


#cp *.gbw /scratch/$USER/orca/tmpdir_$$  
#cp *.xyz /scratch/$USER/orca/tmpdir_$$
rsync *.* /scratch/$USER/orca/tmpdir_$$
#cp *.gzmt /scratch/$USER/orca/tmpdir_$$
#cp *.inp /scratch/$USER/orca/tmpdir_$$

#echo 'The input files were copied to the scratch'

### change directory
cd /scratch/$USER/orca/tmpdir_$$

echo 'Directory changed to Scratch:'
echo '    /scratch/'$USER'/orca/tmpdir_'$$

### orca ausführen
$(which orca) $inpfile > $(basename $inpfile .inp).out

#rm *tmp*

### ergebnisse in storage5/lpe/ ... kopieren
rsync * /$workdir


###scratch ordner löschen
rm -r /scratch/$USER/orca/tmpdir_$$




