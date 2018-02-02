# Thesis Manuscript

[![Waseda University](https://img.shields.io/badge/research-Waseda_University-brightgreen.svg)](http://www.waseda.jp/sem-hflab/nclab/)

This repository contains the LaTeX files of my thesis manuscript during my
Master's degree in Waseda University (A.Y. 2016-2018). It uses an adapted version of the [Masters/Doctoral Thesis](https://www.latextemplates.com/template/masters-doctoral-thesis) template originally created by [Gunn](http://users.ecs.soton.ac.uk/srg/softwaretools/document/templates/) and [Patel](www.sunilpatel.co.uk/thesis-template/).

To build this document, run the following command:

```shell
$ make latex
```
This will build the file in a directory called `_build`. You can change this directory by passing an argument to
the `make` command:

```shell
$ make latex BUILDDIR=new_dir
```
In some distributions, particularly in trusty, some compilation error happens when using `pdflatex`. In these cases,
use the `xelatex` compiler. Again, you can set this as an argument to the `make` command:

```shell
$ make latex COMPILER=xelatex
```

