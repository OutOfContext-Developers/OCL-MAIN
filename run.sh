echo "INSTALLING"

cd lib/OCL-VideoProcessingLibrary/
chmod +x ./run.sh
./run.sh
cd ../../


cd lib/SFML/
chmod +x ./run.sh
./run.sh
cd ../../

rm -rf build/
mkdir build
cd build
cmake .. #-DCMAKE_BUILD_TYPE=Debug
cmake --build .
sudo ./OCL-MAIN
