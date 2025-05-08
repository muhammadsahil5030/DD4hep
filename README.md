# DD4hep
This repository is related to the step-by-step installation of Detector Description for High Energy Physics (DD4hep) with GEANT4 and LCIO using LXPLUS.
On your lxplus account, navigate to the file /cvmfs/sw.hsf.org/ from which you can leverage the key4HEP environment, which provides pre-configured setups for DD4hep, Geant4, and LCIO.
### 1. Set up the Environment
Begin by sourcing the Key4HEP environment, which provides a consistent software stack including DD4hep, Geant4, and LCIO.
```
source /cvmfs/sw.hsf.org/key4hep/setup.sh
```
### 2. Clone DD4hep
Create a directory and clone the DD4hep repository.
```
mkdir your_dd4hep
cd your_dd4hep

git clone https://github.com/AIDASoft/DD4hep.git
```

### 3. Build and install DD4hep
With the environment configured, you can now clone and build DD4hep
```
mkdir ~/DD4hep/build && cd ~DD4hep/build

# Configure the build with CMake
cmake .. \
  -DCMAKE_INSTALL_PREFIX=~/dd4hep_ws/DD4hep-install \
  -DDD4HEP_USE_GEANT4=ON \
  -DDD4HEP_USE_LCIO=ON

# Compile and install
make -j$(nproc)
make install
```

# You can also run the uploaded bash file install_dd4hep.sh to install the DD4hep 

