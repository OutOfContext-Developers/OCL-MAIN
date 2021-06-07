echo "INSTALLING"

cd lib/OCL-VideoProcessingLibrary/
./run.sh
cd ../../

rm -rf build/
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug
cmake --build .
sudo ./OCL-MAIN
