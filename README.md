<h1 align="center">VaporShell</h1>

<div align="center">
  :pencil: ......... :package: ......... :rocket:
</div>

<div align="center">
  <strong>Build | Package | Deploy</strong>
</div>
<div align="center">
  A PowerShell module for AWS CloudFormation :cloud:
</div>

<br />

<div align="center">
  <!-- AppVeyor -->
  <a href="https://ci.appveyor.com/project/nferrell/vaporshell/branch/master">
    <img src="https://ci.appveyor.com/api/projects/status/8a4jsfv42tbmlym8/branch/master?svg=true"
      alt="AppVeyor - Windows Build Status" title="AppVeyor - Windows Build Status" />
  </a>
  <!-- Travis CI -->
  <a href="https://travis-ci.org/scrthq/VaporShell">
    <img src="https://travis-ci.org/scrthq/VaporShell.svg?branch=master"
      alt="Travis CI - Linux / macOS Build Status" title="Travis CI - Linux / macOS Build Status" />
  </a>
  <!-- Coveralls -->
  <a href="https://coveralls.io/github/scrthq/Vaporshell?branch=master">
    <img src="https://coveralls.io/repos/github/scrthq/Vaporshell/badge.svg?branch=master"
      alt="Coveralls.io - Code Coverage" title="Coveralls.io - Code Coverage" />
  </a>
  <!-- PS Gallery -->
  <a href="https://www.PowerShellGallery.com/packages/VaporShell">
    <img src="https://img.shields.io/badge/psgallery-install-blue.svg"
      alt="PowerShell Gallery - Install VaporShell" title="PowerShell Gallery - Install VaporShell" />
  </a>
  <!-- Gitter -->
  <a href="https://gitter.im/VaporShell/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge">
    <img src="https://badges.gitter.im/VaporShell/Lobby.svg"
      alt="Gitter - Chat" title="Gitter - Chat" />
  </a>
  <!-- Gratipay -->
  <a href="https://gratipay.com/VaporShell">
    <img src="https://img.shields.io/gratipay/user/scrthq.svg"
      alt="Gratipay - Donate" title="Gratipay - Donate" />
  </a>
</div>

<div align="center">
  <h3>
    <a href="http://vaporshell.io">
      Website
    </a>
    <span> | </span>
    <a href="http://vaporshell.io/docs/">
      Docs
    </a>
    <span> | </span>
    <a href="http://vaporshell.io/docs/examples">
      Examples
    </a>
    <span> | </span><!-- 
    <a href="https://github.com/scrthq/VaporShell/blob/master/GitHub/CONTRIBUTING.md">
      Contributing
    </a>
    <span> | </span> -->
    <a href="https://gitter.im/VaporShell/Lobby">
      Chat
    </a>
  </h3>
</div>

<div align="center">
  <sub>Built by <a href="https://twitter.com/scrthq">Nate Ferrell</a>. Looking for contributors!
</div>

## Table of Contents
- [Features](#features)
- [Example](#example)
- [In Action](#in-action)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [License](#license)

## Features
- __100% coverage:__ if CloudFormation can, VaporShell can too
- __runs on any OS:__ developed and tested in Windows, Ubuntu, and macOS on PowerShell v3-6
- __validates everything:__ built to make resultant templates reliable
- __goes turbo:__ package and deploy your templates **fast** with one command, `vsl vaporize`

## Example

```powershell
#1 Initialize a VaporShell object
$vsl = Initialize-VaporShell -Description "An even more updated function triggered on a timer."

#2 Add a Serverless function with local code as the CodeUri and a schedule of 5 minutes
$samFunction = New-SAMFunction `
    -LogicalId "ScheduledFunction" `
    -Handler "index.handler" `
    -Runtime "nodejs6.10" `
    -CodeUri ".\code" `
    -Events (Add-SAMScheduleEventSource -LogicalId Timer -Schedule "rate(5 minutes)")
$vsl.AddResource($samFunction)
$TemplateFile = ".\sched-func.yaml"

#3 Save the template as YAML using the VaporShell object's ToYAML() method (uses cfn-flip to convert to/from YAML)
$vsl.ToYAML($TemplateFile)

<#4 Package and deploy the template file (--tf $TemplateFile) as a change set with parameters:
    - stack name (--sn) 'sched-func'
    - S3 bucket also named 'sched-func' (defaults to the stack name if --s3 is not passed)
    - capabilities: CAPABILITY_IAM (--caps iam)
    - Verbose (--v) enabled
    - Force (--f) enabled (make sure that the bucket is created and objects are uploaded)
    - Watch (--w) the stack events in colorized output after executing the change
#>
vsl vaporize --tf $TemplateFile --sn sched-func --caps iam --v --f --w

```
Want to see more examples? Check out the [Examples page](http://vaporshell.io/docs/examples).


## In Action

![Watch-Stack in action](http://vaporshell.io/images/Watch-Stacks.gif)


## Prerequisites

- PowerShell v3+
- .NET 4.5.0+ OR .netstandard 1.3+
  - if you have PowerShell 4+, you're covered!


### Recommended

If you are working with YAML templates, you will need to install AWS Labs' [`cfn-flip`](https://github.com/awslabs/aws-cfn-template-flip). VaporShell uses `cfn-flip` under the hood to work with YAML templates, as PowerShell does not natively support YAML at this time.


## Installation

On PowerShell 5+ or [have PowerShellGet installed](https://www.microsoft.com/en-us/download/details.aspx?id=51451)? Install directly from the PowerShell Gallery:

```powershell
Install-Module VaporShell -Scope CurrentUser
```

Not on PowerShell 5+ and can't install PowerShellGet? Got you covered too.

```powershell
Invoke-Expression (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1")
```
**Please inspect code before you run it. Here's a handy link to that raw content for you to review: [Install-VaporShell.ps1](https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1)**

## License
[Apache 2.0](https://tldrlegal.com/license/apache-license-2.0-(apache-2.0))