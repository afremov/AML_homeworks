#!/bin/sh

SRC="../data/external"
LINK="https://drive.google.com/u/0/uc?id=1-jdAtb4Vw3fcDrZEy8opaFfSlAfG5ViZ"


echo "clear source directory"
rm -rf "$SRC"
mkdir -p "$SRC"
touch "$SRC/.gitkeep"

echo "get dataset"
wget -o errors.txt -O "$SRC/winequalityN.csv" "$LINK" 2>&1
if [ $? -ne 0 ]; then
  echo "download failed"
  cat errors.txt
  rm -rf errors.txt
  rm -rf "$SRC/winequalityN.csv"
  exit 1
else
  rm -rf errors.txt
fi

echo "download succeed"
exit 0
