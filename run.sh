cd lib/OCL-VideoProcessingLibrary
sudo ./run.sh

cd ../../

rm -rf build/
mkdir build
cd build
cmake .. #-DCMAKE_BUILD_TYPE=Debug
cmake --build .
sudo ./OCL-MAIN
