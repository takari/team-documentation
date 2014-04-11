# Installation

This chapter covers the installation process for TDM.

## Before You Start

Before you start installing TDM there are a few things to
establish. The following sections outline a few assumptions about the
audience for this chapter as well as the prerequisites necessary for a
successful installation.

### Assumptions

One of the assumptions of TDM is that you are already somewhat
familiar with Maven terminology. You understand how to install Maven,
and you also understand how to run Maven from the command-line.  The
good news is that, if you know how to do these two things, the
installation process should be very easy for you.

If you are unfamiliar with Maven terminology, and if you have never
installed Maven before, we suggest that you refer to the existing
documentation in the Maven book. In general, a familiarity with Maven
will make the installation and setup process of TDM very easy to
understand.

### Prerequisites

TDM is designed and tested for three operating systems: Windows, OSX,
and Linux running Java 7 or higher.  TDM supports Windows7 or higher,
OSX 10.7 or higher, and standard Linux distributions running Oracle's
JDK 7.

Depending on your particular system and setup procedures, you may need
administrative access to the machine you are installing TDM on. If you
following the instructions outlined below, you will certainly need
administrative access, but if you understand what you are doing you
may be able to get away with running TDM from a directory in your home
directory. We leave this customization to the reader.

## Downloading TDM

To download TDM go to http://takari.io/download. On the Takari
download page click on the prominently displayed link to download the
most recent TDM distribution. The TDM distribution is available as
both a ZIP and GZip'd tar archive to achieve the great compatibility
with a range of operating systems.

## Installing TDM

There are two ways to install TDM on your computer. First, you can
download a complete distribution of TDM which includes Apache Maven.
Second, you can run an installer that will turn a compatible
installation of Apache Maven 3 into a functioning installation of
TDM. The second option was created for environment in which Maven is
already installed to make it easier to migrate large groups of
developers to the supported TDM distribution.

### Installing a TDM Distribution

Installing the TDM distribution is easy, and if you are familiar with
installing Maven you'll notice the similarities.

TODO

### Upgrading an Existing Maven Installation

To upgrade an existing Apache Maven installation, the TDM distribution
download has included a helpful script to automate the process.

TODO

## Verifying TDM Installation

Once you have installed the TDM distribution, you should verify that
you have successfully installed the tool.  To verify the installation
run:

TODO

## Video: Overview of Installation Process (2 minutes)

TODO

## Installation Recipes

### Downloading TDM

#### Problem

You need to download the TDM distribution from Takari.

#### Solution

To download the TDM distribution,

1. Go to http://takari.io/download

2. Download the appropriate distribution for your operating system.

#### Discussion

The TDM distribution is available in two format as a ZIP file and as a
GZip compressed TAR archive. Select the distribution appropriate to
your operating system.

### Installing a TDM Distribution

#### Problem

You need to install a TDM distribution on a machine that is not
already running Maven.

#### Solution

To install a TDM distribution:

1. Download the TDM Distribution

2. TODO

#### Discussion

TODO

### Upgrading an Existing Apache Maven Installation

#### Problem

You need to upgrade an existing Apache Maven installation to the TDM Distribution incuding Maven.

#### Solution

TODO

#### Discussion  

TODO

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
