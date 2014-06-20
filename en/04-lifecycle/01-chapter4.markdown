# The Takari Lifecycle

TDM includes an optimized replacement for the Maven default lifecycle. It
introduces fully incremental build behavior, simplified configuration and higher
performance with a smaller footprint of dependencies needed for the execution
paired with IDE support.

## Overview

The Takari lifecycle is implemented by a single Maven plugin that acts as build
extension and replaces the following Maven plugins.

* Maven Resources Plugin
* Maven Compiler Plugin
* Maven Jar Plugin
* Maven Install Plugin
* Maven Deploy Plugin

some more general stuff to say here.. 

## Activating the Lifecycle

In order to take advantage of the improved lifecycle you have to activate it by
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

## Configuring Resource Filtering and Processing

as usual , but now its incremental in terms of filtering and stuff

    <build>
      <resources>
        <resource>
          <directory>src/main/resources</directory>
          <filtering>true</filtering>
        </resource>
      </resources>

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

## Dependency Analysis

Goals are 

* text
* jstree
* dot

those are terrible names... should be more intuitive names

Use with e.g.,

    mvn takari-lifecycle:jstree
    
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