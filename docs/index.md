---
layout: page
style: comingsoon
title: Documentation
---

<!-- TOC -->

- [Prerequisites](#prerequisites)
- [Installing the Module](#installing-the-module)

<!-- /TOC -->

## Prerequisites

In order to install Vaporshell from the Powershell Gallery and run it successfully once installed, the following must be true:

1. Powershell v3.0 or greater is installed.
    * If you are running on Windows, you can check this off.
    * If you are not running Windows, head over to the official [Powershell GitHub page](https://github.com/powershell/powershell#get-powershell) for details on how to install Powershell on your system.
2. The PowershellGet module is installed.
    * If you are running Windows 10, WMF 5.1, or are running Linux or macOS, you're covered.
    * If you do not have it, you can install PowershellGet by:
        1. [Upgrading your WMF installation to the latest version](http://aka.ms/wmf5latest)
        2. [Installing the module via MSI installer directly](http://go.microsoft.com/fwlink/?LinkID=746217&clcid=0x409)

## Installing the Module

To install Vaporshell from the PowershellGallery, open Powershell and run the following command:  
```powershell
Install-Module -Name Vaporshell -Scope CurrentUser
```
> _If you would like to install for all users, run the following command in an **elevated** Powershell prompt:_
```powershell
Install-Module -Name Vaporshell
```