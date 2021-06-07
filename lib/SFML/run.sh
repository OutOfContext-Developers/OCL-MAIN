echo "INSTALLING ffmpeg"

if [ -d "./install" ]
then
    echo "Directory install exists."
    echo "Assuming SFML is installed"
else

  echo "INSTALLING SFML"

  # Run the script ot install SFML
  rm -rf build install
  mkdir build install
  cd build/
  cmake ../SFML/ -DCMAKE_INSTALL_PREFIX=../install #-DCMAKE_BUILD_TYPE=Debug
  make
  sudo make install
fi
