# Thesis Manuscript

[![Waseda University](https://img.shields.io/badge/research-Waseda_University-brightgreen.svg)](http://www.waseda.jp/sem-hflab/nclab/)
[![Build Status](https://travis-ci.com/ljvmiranda921/thesis-manuscript.svg?token=AxBhoJS4fomNDw4sgFsV&branch=master)](https://travis-ci.com/ljvmiranda921/thesis-manuscript)
[![GitHub license](https://img.shields.io/github/license/ljvmiranda921/cv.svg)](https://github.com/ljvmiranda921/thesis-manuscript/blob/master/LICENSE)
[![download pdf](https://img.shields.io/badge/download-pdf-blue.svg)](https://www.dropbox.com/s/345u99e4anukj9u/main-latest.pdf?dl=0)


This repository contains LaTeX files and related assets for my thesis
manuscript while studying in Waseda University (A.Y. 2016-2018). It uses an adapted
version of the [Masters/Doctoral Thesis](https://www.latextemplates.com/template/masters-doctoral-thesis) 
template originally created by [Gunn](http://users.ecs.soton.ac.uk/srg/softwaretools/document/templates/)
and [Patel](www.sunilpatel.co.uk/thesis-template/). The compiled pdf is
automatically deployed to Dropbox, and is downloadable via the link above.
To manually build this file, simply clone the repository and run the following
command:

```shell
$ make latex
```
This will build the file in a directory called `_build`. You can change this
directory by passing an argument to the `make` command:

```shell
$ make latex BUILDDIR=new_dir
```

If you are interested to know more about my continuous integration and deployment
workflow, checkout my [blog post](https://ljvmiranda921.github.io/notebook/2018/02/04/continuous-integration-for-latex/).
I wrote about how to integrate LaTeX with Travis-CI to deploy artifacts to Dropbox.

## Dependencies


This document is dependent on the [TexLive 2015 Distribution](ftp://tug.org/historic/systems/texlive/2015/). You can find the
install sequence and distribution set-up in the file `tlsetup.sh`. This document uses various CTAN packages installed by typing `tlmgr install package`. The list is quite long, but a dependency tree can be found in `main.log` after compilation.

## Contact

- Email: lester.miranda@toki.waseda.jp
- Website: [Lj Miranda Blog](https://ljvmiranda921.github.io)
