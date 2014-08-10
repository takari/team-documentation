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

For the site

gem install jekyll
gem install RedCarpet
    
# Build it

To build it all just run

    $ ./build.sh

# PDF Output

    $ makepdfs en

# Making Ebooks (and simple HTML)

    $ makeebooks en
    
# Complete site

The build.sh script does it all and also launches a server with the
site running.

Once the build is finished you can access the site at http://localhost:4000

The index html page there is just a mock with a link to http://localhost:4000/book.html 
This page could be expanded and be part of the normal deployed website. It has links to 
all the formats of the book including the multi page html version.

The rendered site resource are available in site/_site and could potentially be 
deployed to a production server from there as long as they do not overlap with 
the files there. 

# Authoring Content

Source files are in en/* as markdown formatted files. 

Line width is set to 80 characters for formatting.

You can use the Markdown editor available from the Eclipse marketplace.

Comments have to be added with  

    [//]: # (test comment)

for each line.

Image inclusions for figures have to follow the naming convention of the 
existing images.


# Site Look and Feel 

All the resources and such for the website rendering are found in the site folder.

Specifically the file site/_layouts/master.html is used as a template for the 
the multi page html version of the book.
