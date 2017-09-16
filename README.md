<h1 align="center">VaporShell</h1>

<div align="center">
  :pencil:   |   :package:   |   :rocket:
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
  <sub>Built by <a href="https://twitter.com/scrthq">Nate Ferrell</a>. Looking for <a href="mailto:nate@vaporshell.io?Subject=Contributor%20here!" target="_top">contributors</a>!
</div>

## Table of Contents
- [Features](#features)
- [Example](#example)
- [Installation](#installation)
- [License](#license)

## Features
- __100% coverage:__ if CloudFormation can, VaporShell can too
- __runs on any OS:__ developed and tested in Windows, Ubuntu, and macOS on PowerShell v3-6
- __validates everything:__ built to make resultant templates reliable
- __goes turbo:__ package and deploy your templates **fast** with one command, `vsl vaporize`

## Example
This example...
1. Initializes a VaporShell object
2. Adds a Serverless function with local code as the CodeUri and a schedule of 5 minutes
3. Saves the template as YAML
4. Resolves dependancies and uploads them to an S3 bucket named the same as the stack name "sched-func"
5. Creates a change set with the resolved template
6. Executes the change set
7. Follows with `Watch-Stack` to show colorized Stack Events as they happen

```powershell
$vsl = Initialize-VaporShell -Description "An even more updated function triggered on a timer."
$vsl.AddResource(
    ( New-SAMFunction -LogicalId "ScheduledFunction" -Handler "index.handler" -Runtime "nodejs6.10" -CodeUri ".\code" -Events (Add-SAMScheduleEventSource -LogicalId Timer -Schedule "rate(5 minutes)"))
)
$TemplateFile = ".\sched-func.yaml"
$vsl.ToYAML($TemplateFile)

vsl vaporize --tf $TemplateFile --sn sched-func --capabilities iam --v --f --w

```
Want to see more examples? Check out the [Examples page][http://vaporshell.io/docs/examples].


## Installation

On PowerShell 5+? Install directly from the PowerShell Gallery:

```powershell
Install-Module VaporShell -Scope CurrentUser
```

Not on PowerShell 5+? Got you covered too.

```powershell
Invoke-Expression (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1")
```
**Please inspect code before you run it. Here's a handy link to that raw content for you to review: [Install-VaporShell.ps1](https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1)**

## License
[Apache 2.0](https://tldrlegal.com/license/apache-license-2.0-(apache-2.0))
