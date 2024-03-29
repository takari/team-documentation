# Latex Setup for PDF Output

To get a PDF version run `makepdf en` and a file called
`team-book.en.pdf` will appear in the root of the project. `makepdf` requires
pandoc and XeTeX as dependencies.

* `config.yml`: this is a simple configuration file which allows you to
  specify language-specific customizations.
* `template.tex`: this is the main LaTeX file which determines the style of the
  PDF version of the book. Its contents is run through the ERB templating
  language to include language-specific customizations from config.yml.


# For Windows

Windows build is tested with Pandoc 1.8 and MixTeX 2.9. Install MixTeX with all
font options. Only `en` has been tested so far. To make it work, it needs some
tweaks.

* `pandoc` and `xelatex` binaries must be on the PATH
* Change the default fonts in `config.yml` to something that exists in Windows.
  Example for working fonts:
    font: Latin Modern Roman
    mono: Courier
    bold: "{*}"
