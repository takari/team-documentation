# Installation

This chapter covers the installation process for TDM.

## Before You Start

Before you start installing TDM there are a few things to establish. The
following sections outline a few assumptions about the audience for this chapter
as well as the prerequisites necessary for a successful installation.

### Assumptions

One of the assumptions of TDM is that you are already somewhat familiar with
Maven terminology. You understand how to install Maven, and you also understand
how to run Maven from the command-line. The good news is that, if you know how
to do these two things, the installation process should be very easy for you.

If you are unfamiliar with Maven terminology, and if you have never installed
Maven before, we suggest that you refer to the existing documentation or attend
a Takari Maven training. In general, a familiarity with Maven will make the
installation and setup process of TDM very easy to understand.

### Prerequisites

TDM is designed and tested for 

* Microsoft Windows 7 or higher
* Apple OSX 10.7 or higher and 
* Modern Linux Distributions

with the Oracle Java Development Kit JDK version 7 installed.

Depending on your particular system and setup procedures, you may need
administrative access to the machine you are installing TDM on. If you following
the instructions outlined below, you will certainly need administrative access,
but if you understand what you are doing you may be able to get away with
running TDM from a directory in your home directory. We leave this customization
to the reader.

## Downloading TDM

To download TDM go to http://takari.io/download. The TDM distribution is
available as both a ZIP and GZip'd tar archive. The two archives contain the
same distribution and it does not matter, which one you use for your
installation. 

You should download the archive format, which you know how to extract and have
the compatible tools already installed. Modern operating systems can work with
both formats easily, although Windows tends to have better support for zip files
wil tar.gz files are more commonly used on Unix variants such as OSX and Linux.

## Installing TDM

There are two ways to install TDM on your computer. You can download a complete
distribution of TDM which includes Apache Maven. Alternatively you can run an
installer that will turn a compatible installation of Apache Maven 3 into a
functioning installation of TDM. The second option was created for environment
in which Maven is already installed to make it easier to migrate large groups of
developers to the supported TDM distribution.

### Installing a TDM Distribution

Installing the TDM distribution is easy, and if you are familiar with
installing Maven you'll notice the similarities. Once you have downloaded the
archive extract it with a commandline tools like 'tar' or 'unzip' or one of the
many available applications for your operating system.

    unzip tdm-1.0.0.zip 

    tar xfvz tdm-1.0.0.tar.gz

Successful extraction will create a directory with the same name as the archive
file, omitting the extension.

    tdm-1.0.0

As a next step you need to move this directory to a suitable location. The
requirements are simply that the user that will run TDM has read access to the
path.

We suggest to follow the operating specific recommendations e.g. on Linux or
OSX install TDM into /opt or /usr/local and avoid path names containing spaces
such as "Program Files".

    /opt/tdm-1.0.0
    C:\tools\tdm-1.0.0

M2_HOME next

### Upgrading an Existing Maven Installation

To upgrade an existing Apache Maven installation, the TDM distribution download
has included a helpful script to automate the process.

TODO
    mvn tdm:install or whatever


## Verifying TDM Installation

Once you have installed the TDM distribution, you should verify that you have
successfully installed the tool. To verify the installation run:
TODO

    $ mvn -v
    TDM 1.0.0 (asdf123; 2014-02-14T09:37:52-08:00)
    Maven home: /opt/tdm-1.0.0
    Java version: 1.7.0_55, vendor: Oracle Corporation
    Java home: /Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home/jre
    Default locale: en_US, platform encoding: UTF-8
    OS name: "mac os x", version: "10.8.5", arch: "x86_64", family: "mac"



#### Discussion

The TDM distribution is available in two format as a ZIP file and as a
GZip compressed TAR archive. Select the distribution appropriate to
your operating system.




Here is an example figure ... have to figure out how that works in the scripts
yet. Notice that the file name does NOT determine the file .. only to some
degree. The chapter number is autoinserted based on the folder or so.

Insert 18333fig0101.png
Figure 1-1. one one

If you make some changes and commit again, the next commit stores a pointer to
the commit that came immediately before it. After two more commits, your history
might look something like Figure 1-2.

Insert 18333fig0102.png
Figure 1-2. one two
