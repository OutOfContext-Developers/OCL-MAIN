rm -rf build install
mkdir build install
cd build/
cmake ../OCL-VideoProcessingLibrary/ -DCMAKE_BUILD_TYPE=Debug #-DCMAKE_INSTALL_PREFIX=../install
make
sudo make install
