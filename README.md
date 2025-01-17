
# Run the Evaluator
To run the project:
- open the Xcode project `ExpressionEvaluator.xcodeproj`. 
- Press the run button (CMD+SHIFT+R)
- Enter input in the [Xcode] console.

That should be all you will need to know. Keep reading if issues arise.

# Errors
The project runs a script during the build process that generates the ANTLR boilerplate for the grammar file. 

If this fails, a nice error should show up in Xcode.

## ANTLR Location
The script expects the jar file for ANTLR to be located at `/usr/local/lib/antlr-4.8-complete.jar`. If this is not the case for your system, change that value in `build-phases/antlr-generate.sh`

If this doesn't resolve it, I've included the generated files, so you could just disable the build phase titled: `Generate ANTLER Parser` accessible through `ExpressionEvaluator`(project file)->`Build Phases`.

# Reproduction Notes
The project took some configuration to work with Swift.
The project will work **as-is** through the Xcode project.
I've added the following as notes for myself or to reproduce my setup if there is an issue.

[ANTLR - Swift reference](https://github.com/antlr/antlr4/blob/master/doc/swift-target.md)

```sh
ANTLER_JAR=/usr/local/lib/antlr-4.8-complete.jar
export CLASSPATH=".:$ANTLER_JAR:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "$ANTLER_JAR:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "$ANTLER_JAR:$CLASSPATH" org.antlr.v4.gui.TestRig'
```
## Install Maven
[download page](https://maven.apache.org/download.cgi)

Decompress that, put it at `/opt/apache-maven-3.6.3`
```sh
export PATH=/opt/apache-maven-3.6.3/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home)
```
## Configure ANTLR Runtime
```sh
git clone https://github.com/antlr/antlr4
cd antlr4
mvn install
```
This seems to run the tests too. Once the tests were running, I just killed the process. There is probably options to not run tests.

This generates the runtime support Xcode project.
```sh
cd antlr4/runtime/Swift
python boot.py --gen-xcodeproj
```
Then drag the project file into the App project and add it as a dependency.
