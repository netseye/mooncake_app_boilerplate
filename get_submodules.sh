#!/bin/bash

root_dir=$(pwd)
echo $root_dir

# Shared denpendencies
echo "> fetching shared submodules.."

cd $root_dir
mkdir dependencies
cd dependencies
echo "> $(pwd)"

git clone https://github.com/Forairaaaaa/smooth_ui_toolkit.git
git clone --depth 1 https://github.com/lovyan03/LovyanGFX.git
git clone https://github.com/Forairaaaaa/mooncake.git

# Desktop
echo "> fetching submodules for desktop build.."

cd $root_dir
echo "> $(pwd)"

echo "> :)"

# ESP32C6
echo "> fetching submodules for esp32c6 build.."

cd $root_dir
mkdir platforms/esp32c6/components
cd platforms/esp32c6/components
echo "> $(pwd)"

git clone https://github.com/bblanchon/ArduinoJson.git
git clone https://github.com/Forairaaaaa/arduino_lite.git

echo "> done"
