# make-pdf-from-images

This can make a `pdf` file from some image files.

## Requirement

- imagemagic 6 (not imagemagick 7)

## Install

``` bash
$ bundle install --path=vendor/bundle
```

## Usage

Add some image files to the current dicectory and execute the command below.

``` bash
$ ./mkpdf.sh <filename>
```

Then, `<filename>.pdf` would be generated.
