DEPENDENCIES="libavformat-dev libavcodec-dev libavutil-dev libavdevice-dev libavfilter-dev libswresample-dev libswscale-dev "

# Installing required packages
# for package in $DEPENDENCIES; do
#   if [ $(dpkg-query -W -f='${Status}' $package 2>/dev/null | grep -c "ok installed") -eq 0 ];
#   then
#     apt-get install $package;
#   fi
# done

rm -rf build/
mkdir build
cd build
cmake .. #-DCMAKE_BUILD_TYPE=Debug
cmake --build .
sudo ./OCL-MAIN
