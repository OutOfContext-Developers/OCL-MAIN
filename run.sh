cd lib/OCL-VideoProcessingLibrary
sudo ./run.sh

cd ../../

rm -rf build/
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
make
sudo ./OCL-MAIN
