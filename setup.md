---
layout: page
title: Computer Setup 
permalink: /setup/
menu: true
order: 4
description: > 
  To fully participate in the hands-on sections of this course you will need access to the software described below on your **own laptop**. Note that you may need Administrator privileges/permissions to install some of these.

comments: true
---

Students in this course will learn that Bioinformatics frequently requires analyzing large complex datasets. The recommended approach to such analysis is to work with a computer that offers **UNIX** integration. Together we will lean the fundamentals of the UNIX command line and the R environment for data analysis and graphics.


### Student Laptops & Software Setup Instructions
To fully participate in this course students will need to bring a laptop to class.  I much prefer Mac and Linux based laptops as they already have a UNIX base.  If you can, please bring one of these.  However, don't worry if you are running Windows as we will be able to login to a campus based UNIX machine from your laptop or use a classroom Mac for classwork. 

Regardless of your laptop type you will need to install the software described below.

### An up-to-date **web browser** 
Current versions of [Chrome](https://www.google.com/chrome/), [Firefox](http://www.mozilla.org/firefox/) and [Safari](Safari) are preferred.


### The data analysis environment **R** and **RStudio**
R Binaries for Windows, MacOSX and Linux can be downloaded and installed from [CRAN](http://cran.r-project.org/index.html) (Comprehensive R Archive Network). If possible download the latest binary version of R for your operating system. As of course launch (Sept 17) the latest release (2017/06/07, "Single Candle") is R-3.4.1.

After installing R itself we recommend installing [RStudio Desktop](https://www.rstudio.com/products/rstudio/download/#download) (v1.0.153 or above), a slick visual interface for R. **N.B.** You will want the Open Source **FREE** version.

<!-- 
### The Bash Shell
Bash is a commonly-used UNIX shell that gives you the power to do simple tasks more quickly.

**Mac OS X:** You do not need to install anything. You can access bash from the **Terminal** (found in `/Applications/Utilities`). You may want to keep Terminal in your dock for this class.

**Linux:** There is no need to install anything.

**Windows:** Install [MobaXterm](http://mobaxterm.mobatek.net), an enhanced terminal with bash for Windows. Note that the default 'Personal Edition install' typically places the MobaXterm executable in `C:\Program Files (x86)\Mobatek\MobaXterm Personal Edition`.

Please also install the [**Plugin CygUtils**](http://mobaxterm.mobatek.net/CygUtils.plugin). Once downloaded please move the `CygUtils.plugin` file to the folder `C:\Program Files (x86)\Mobatek\MobaXterm Personal Edition`. Launching mobaxterm will complete the install.



### Text Editor
When you're writing code, it's nice to have a text editor that is optimized for writing code, with features like automatic color-coding of key words. The default text editor on Mac OS X and Linux is usually set to Vim, which is not famous for being intuitive. if you accidentally find yourself stuck in it, try typing the **escape key**, followed by **:q!** (colon, lower-case 'q', exclamation mark), then hitting Return to return to the shell. Nano is a basic editor and the default that we will use during this course. 


**Mac OS X:** nano should be pre-installed.

**Linux:** nano should be pre-installed.

**Windows:** Nano can be installed as a plugin to mobaxterm (see above). First start mobaxterm and then in the mobaxterm terminal type: `mobapt` Pressing Return will bring up a panel listing available additions. Please select **nano** by clicking on its entry and then the “Install/Update” button.
 --> 

### Using Jetstream

Jetstream is a cloud-based on-demand virtual machine system funded by the National Science Foundation. It will provide us with UNIX based computers (what we call “virtual machine instances”) that look and feel just like a regular Linux workstation but with thousands of times the computing power!  

We will cover configuring and conecting to Jetstream in class. You can also find detailed *step-by-step* instructions for:

 - [Starting a Jetstream Computer Instance]({{ site.baseurl }}/jetstream/boot/),
 - [Logging in to jetstream from your local terminal]({{ site.baseurl }}/jetstream/login/),
 - [Adding password to a Jetstream instance]({{ site.baseurl }}/jetstream/ssh_changepassword/). 

<!--- Still to complete...
### Why this class

### The semi-flipped classroom
-->
