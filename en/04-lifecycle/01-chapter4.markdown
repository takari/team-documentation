# The Takari Lifecycle

TDM includes an optimized replacement for the Maven default lifecycle. The 
Takari Lifecycle Plugin provided you access to a number of significant 
advantages:

1. One plugin with a small set of dependencies provides equivalent functionality
   to five plugins with a large set of transitive dependencies. This reduces the 
   download times to retrieve the needed components as well tje storage space 
   requirements in your repositories. 

2. The configuration for a number of aspects for your build is centralized to 
   one plugin and simplified.

3. The reduced complexity of the plugins involved in the build results in higher 
   build performance on the command line and in the IDE.

4. The build is fully incremental, not only for your source code, but also for 
   your resources, which in turn again speeds up development cycle and build 
   times.

5. Dedicated IDE support brings the advantages of the lifecyle to your daily 
   development work.

## Overview

The Takari lifecycle is implemented by a single Maven plugin that acts as build
extension and replaces the following Maven plugins.

* Maven Resources Plugin
* Maven Compiler Plugin
* Maven Jar Plugin
* Maven Install Plugin
* Maven Deploy Plugin

You can take advantage of all these replacements in your builds or pick and 
choose. 

## Activating the Lifecycle

In order to take advantage of the improved lifecycle, you have to activate it by
adding the takari-lifecycle-plugin as a build extension.

    <build>
      <plugins>
        <plugin>
          <groupId>io.takari.maven.plugins</groupId>
          <artifactId>takari-lifecycle-plugin</artifactId>
          <extensions>true</extensions>
        </plugin>
      </plugins>
    </build>

This is all the configuration necessary for projects with packaging 'pom'.

Projects with packaging 'jar' have to be switched to use the 'takari-jar' packaging.

    <project>
      <modelVersion>4.0.0</modelVersion>
      <groupId>io.takari.lifecycle.its.basic</groupId>
      <artifactId>basic</artifactId>
      <version>1.0</version>
      <packaging>takari-jar</packaging>

The 'takari-jar' packaging defines new lifecycle bindings for your build and 
replaces the default plugins for the 'jar' packaging with their Takari 
counterparts. Using the 'takari-jar' packaging is the easiest way to adopt all 
the new features. 

Alternatively you can use only a specific part, e.g. the new compiler goals only,
by using the default 'jar' packaging with the 'takari-lifecycle-plugin' added. 
If you choose this approach, you will need to deactivate (or skip) the plugin you 
want to replace to avoid interference problems between the takari lifeycle and 
the default plugin.

An example for using the 'jar' packaging, but replacing the default compiler 
with the takari lifecycle support can be configured by adding the
'takari-lifecycl-plugin' and explicitly configuring the goals you want to 
execute: 

    <build>
      <plugins>
        <plugin>
          <groupId>io.takari.maven.plugins</groupId>
          <artifactId>takari-lifecycle-plugin</artifactId>
          <executions>
            <execution>
              <id>compile</id>
              <goals>
                <goal>compile</goal>
                <goal>testCompile</goal>
              </goals>
            </execution>
          </executions>
        </plugin>
      </plugins>

and deactivating the Maven compiler plugin:  

    <build>
    ....
      <pluginManagement>
        <plugins>
          <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.1</version>
            <configuration>
              <skip>true</skip>
              <skipMain>true</skipMain>
            </configuration>
          </plugin>
        </plugins>
      </pluginManagement>

In a similar manner you can configure to use the other goals of the takari 
lifecycle plugin, replacing specific parts of your default build. 

## Observing the Takari Lifecycle on the Log

Once you have activated the Takari lifecycle, the build log will show all the 
invocations of the specific goals. For a project with packaging 'pom' this 
will mainly affect the install and deploy invocations

    [INFO] --- takari-lifecycle-plugin:1.7.4:install (default-install) @ pom-only ---
    [INFO] Performing incremental build
    [INFO] Installing .../pom.xml to /~/.m2/repository/.../SNAPSHOT/pom-only-1.0.0-SNAPSHOT.pom
    [INFO]
    [INFO] --- takari-lifecycle-plugin:1.7.4:deploy (default-deploy) @ pom-only ---
    [INFO] Performing incremental build
    ...
    Uploaded: http://.../1.0.0-SNAPSHOT/pom-only-1.0.0-20140731.183927-2.pom (2 KB at 8 KB/sec)

A project with packaging 'takari-jar' will log the lifecycle plugin invocations 
for the resources, compiliation and packaging related goals as well.

Upon first invocation each goal will be performed as usual, executing all steps 
e.g., compiling all files or copying and filtering all resources. 

    [INFO] --- takari-lifecycle-plugin:1.7.4:process-resources (default-process-resources) @ simple-jar ---
    [INFO] Previous incremental build state does not exist, performing full build

Subsequent builds, however will be able to access the information about prior 
builds and execute incrementally. 

    $ mvn compile
    [INFO] --- takari-lifecycle-plugin:1.7.4:process-resources (default-process-resources) @ simple-jar ---
    [INFO] Performing incremental build
    [INFO]
    [INFO] --- takari-lifecycle-plugin:1.7.4:compile (default-compile) @ simple-jar ---
    [INFO] Performing incremental build
    [INFO] Skipped compilation, all 1 sources are up to date
    
Note that a 'clean' invocation removes the state information and re-establishes 
a clean slate.

## Configuring Resource Filtering and Processing

The Takari lifecycle supports the resource configuration just like the Maven 
resources plugin e.g.,

    <build>
      <resources>
        <resource>
          <directory>src/main/resources</directory>
          <filtering>true</filtering>
        </resource>
      </resources>

In contrast to the Maven resources plugin it however supports incremental 
resource processing in terms of copying and filtering. It detects any property 
changes as well as any resource changes and incrementally reprocesses the 
affected files only. (TODO 



## Compiler Configuration

Generic

* source and target
* proc
* compilerId 
* and some others

compile

* includes
* excludes

testCompile

* testIncludes
* testExcludes

## Creating source and test Archives


Part of the jar mojo configuration

    <plugin>
      <groupId>io.takari.maven.plugins</groupId>
      <artifactId>takari-lifecycle-plugin</artifactId>
      <extensions>true</extensions>
      <configuration>
        <sourceJar>true</sourceJar>
        <testJar>true</testJar>
      </configuration>

* mainJar
* sourceJar
* testJar
* archive (and all the nested stuff)


## Installing and Deploying Artifacts

The takari lifecycle plugin transparently replaces the install and the deploy
plugins as you can see from this sample output of running deploy on a 'pom'
packing project.

    [INFO] --- takari-lifecycle-plugin:x.y.z:install (default-install) @ pom-only ---
    [INFO] Installing .../pom.xml to ~/.m2/repository/.../pom-only-1.0.pom
    [INFO]
    [INFO] --- takari-lifecycle-plugin:1.8.0-SNAPSHOT:deploy (default-deploy) @ pom-only ---
    Uploading: http://.../pom-only-1.0.pom
    Uploaded: http://.../pom-only-1.0.pom (2 KB at 4.5 KB/sec)
    Downloading: http://.../maven-metadata.xml
    Uploading: http://.../maven-metadata.xml
    Uploaded: http://.../maven-metadata.xml (311 B at 1.6 KB/sec)

On a jar packaging project the pom and jar are installed and deployed as usual:


    [INFO] --- takari-lifecycle-plugin:x.y.z:install (default-install) @ simple-jar ---
    [INFO] Installing .../simple-jar-1.0-SNAPSHOT.jar to ~/.m2/repository/.../simple-jar-1.0-SNAPSHOT.jar
    [INFO] Installing .../pom.xml to ~/.m2/repository/.../simple-jar-1.0-SNAPSHOT.pom
    [INFO]
    [INFO] --- takari-lifecycle-plugin:x.y.z:deploy (default-deploy) @ simple-jar ---
    Downloading: http://.../maven-metadata.xml
    Uploading: http://.../simple-jar-1.0-20140620.221731-1.jar
    Uploaded: http://.../simple-jar-1.0-20140620.221731-1.jar (2 KB at 9.2 KB/sec)
    Uploading: http://.../simple-jar-1.0-20140620.221731-1.pom
    Uploaded: http://.../simple-jar-1.0-20140620.221731-1.pom (2 KB at 13.4 KB/sec)
    Downloading: http://.../maven-metadata.xml
    Uploading: http://.../maven-metadata.xml
    Uploaded: http://.../maven-metadata.xml (781 B at 11.7 KB/sec)
    Uploading: http://.../maven-metadata.xml
    Uploaded: http://.../maven-metadata.xml (295 B at 4.8 KB/sec)
    
    
## Installing M2e Integration

The incremental build behavior of the takari lifecycle is supported by an 
extension to the Maven support for Eclipse, m2e.

You can install it by choosing Help - Install New Software and adding another 
software site using the newest subdirectory of 

http://repository.takari.io:8081/nexus/content/sites/m2e.extras/m2eclipse-takari-lifecycle/0.1.0/N/

as the URL. Once the components are loaded in Eclipse you will be able to select 
the Takari Build Lifecycle and proceed with the install through the dialogs. 
After a restart of Eclipse the incremental build support will be available.