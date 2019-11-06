# java-build-automation
A simple gradle-less, maven-less, ant-less build script for low scale java projects. for Bash
Fully automatic, no tinkering with build.sh and setup.sh needed
The only prompt is in setup.sh when it asks for your main class package (com.your.main.class.MainClass)

### setup.sh
Will set up the standard maven-style project layout
```
build (used for storing the temp compiled classed, and extracted dependencies)
libs (dependency jars)
src
 - java
    - main
      - (Your Package Tree)
         - YourMainClass.java
    - resources
      - META-INF
         - MANIFEST.MF (properly set up with the classpath, and your main class)
```
### build.sh
Will compile, and full build your project with all dependencies, resulting in build.jar
