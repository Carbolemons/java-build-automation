#!/bin/bash
#Discord Carbolemons#0001 
#github.com/Carbolemons
#https://carbolemons.com
#full build script for compiling project
cp ./libs/*.jar ./build/ #copy dependencies to build
cd ./build/
find ./ -name "*.jar" -exec jar -xf {} \; #extract dependencies
rm *.jar #delete residue jars, they shouldnt get zipped
rm -r META-INF #delete jar manifests
cd ..
find ./ -name "*.java" > src.txt #compile working tree of all java files
javac -cp ".:./libs/*:./src/main/java" @src.txt -d ./build/ #compile and export to build
cd build 
jar cvfm build.jar ../src/main/resources/META-INF/MANIFEST.MF . #compile full jar, with proper manifest
cp build.jar .. #move fresh jar to home
rm -r ../build/* #empty build
