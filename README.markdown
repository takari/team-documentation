# Takari Distribution Maven - Documentation

This is the source code for Takari Distribution Maven documentation.

# Requirements 

On Fedora (16 and later) you can run something like this::

    $ yum install ruby calibre rubygems ruby-devel rubygem-ruby-debug rubygem-rdiscount

On MacOS you can do like this::
  
1. INSTALL ruby and rubygems
2. `$ gem install rdiscount`
3. DOWNLOAD Calibre for MacOS and install command line tools. You'll need some dependencies to generate a PDF:
    * pandoc 1.11.1 or later : http://johnmacfarlane.net/pandoc/installing.html
    * xelatex: http://tug.org/mactex/

# Build it

To build it all just run

    $ ./build.sh

# PDF Output

    $ makepdfs en

# Making Ebooks (and simple HTML)

    $ makeebooks en

# Authoring Content

Source files are in en/* as markdown formatted files. 

Line width is set to 80 characters for formatting.