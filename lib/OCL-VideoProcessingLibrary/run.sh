echo "INSTALLING ffmpeg"

if [ -d "./install" ]
then
    echo "Directory install exists."
    echo "Assuming ffmpeg and OCL-VPL is installed"
else
  # Run the script to install ffmpeg
  cd ./OCL-VideoProcessingLibrary/lib/FFMPEG
  chmod +x ./run.sh
  ./run.sh
  cd ../../../

  echo "INSTALLING OCL-VideoProcessingLibrary"

  # Run the script ot install OCL-VPL
  rm -rf build install
  mkdir build install
  cd build/
  cmake ../OCL-VideoProcessingLibrary/ -DCMAKE_INSTALL_PREFIX=../install -DCMAKE_BUILD_TYPE=Debug
  make
  sudo make install
fi
