#!/bin/bash

echo -e "\nMake sure you downloaded the latest version of the Python NAOqi SDK. If you haven't downloaded the SDK, you can find it here:
https://community.aldebaran.com/en/resources/software/language/en-gb/field_software_type/sdk/robot/nao-2 \n"

read -p "Please enter the path of your Python NaoQi SDK (without the last '/'): " target_path

all_libs="$target_path/*.dylib $target_path/*.so"
boost_libs=$target_path/libboost*.dylib

for lib in $all_libs; do
  echo "Treating $lib"
  for boost_lib in $boost_libs; do
    echo "Changing boost lib $boost_lib"
    install_name_tool -change $(basename $boost_lib) $boost_lib $lib
  done
done
