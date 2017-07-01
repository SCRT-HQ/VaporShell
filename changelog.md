---
layout: page 
title: Change Log
description: Changes within each release of Vaporshell and plans/ideas for the future
---
<!-- TOC -->

- [Upcoming](#upcoming)
    - [In-Progress](#in-progress)
    - [Long-Term](#long-term)
- [Historical](#historical)
    - [1.1.0](#110)
    - [1.0.0](#100)
    - [0.7.10](#0710)
    - [0.7.9](#079)
    - [0.7.8](#078)
    - [0.7.7](#077)
    - [0.7.6](#076)
    - [0.7.5](#075)
    - [0.7.4](#074)
    - [0.7.3](#073)
    - [0.7.2](#072)

<!-- /TOC -->

***

## Upcoming

### In-Progress

- [Issue #3](https://github.com/scrthq/Vaporshell/issues/3): Enable external config files for template reuse across environments

### Long-Term

- Add support for other Cloud Providers such as Google Cloud Platform, Azure


***

## Historical

### 1.1.0

- Added `Update-VSResourceFunctions`
- Updated all Resource and Property Type functions

### 1.0.0

- Added full YAML support for import and export via leveraging `cfn-flip` from awslabs
- All functional issues resolved, ready to declare v1!  


### 0.7.10

- Added full Serverless coverage
- Expanded `Add-UserData` functionality to detect ps1, bat & cmd files and tag them if needed


### 0.7.9

- Fixed issue where List parameters with single values were being cast as a single string/object instead of an array with a single string/object


### 0.7.8

- Added `-ValidateTemplate` parameter to leverage `aws cloudformation validate-template` for syntax validation


### 0.7.7

- AppVeyor config updates


### 0.7.6 

- Added in FunctionBuilder and finished building all resource and resource property types


### 0.7.5 

- Added `Add-UserData`


### 0.7.4 

- Added Coveralls.io code coverage grading to CI process


### 0.7.3

- Expanded AppVeyor tests


### 0.7.2

- Updated module minor version to 7