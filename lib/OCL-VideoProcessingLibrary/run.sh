rm -rf build install
mkdir build install
cd build/
cmake ../OCL-VideoProcessingLibrary/ -DCMAKE_INSTALL_PREFIX=../install #-DCMAKE_BUILD_TYPE=Debug
make
sudo make install
