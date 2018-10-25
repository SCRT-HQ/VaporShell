<center><img src="https://vaporshell.io/images/VAPORSHELL-VARIATION2-B.png" alt="VaporShell" style="height: 200px;" align="center"/></center>

***
</br></br>

<div align="center">
  :pencil: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :package: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :rocket:
</div>

<div align="center">
  <strong>Build | Package | Deploy</strong>
</div>
<div align="center">
  A PowerShell module for building, packaging and deploying AWS CloudFormation templates :cloud:
</div>

<br />

<div align="center">
  <!-- Azure Pipelines -->
  <a href="https://dev.azure.com/scrthq/SCRT%20HQ/_build/latest?definitionId=3">
    <img src="https://dev.azure.com/scrthq/SCRT%20HQ/_apis/build/status/VaporShell-CI"
      alt="Azure Pipelines" title="Azure Pipelines" />
  </a>&nbsp;&nbsp;&nbsp;&nbsp;
  <!-- Coveralls -->
  <a href="https://coveralls.io/github/scrthq/Vaporshell?branch=master">
    <img src="https://coveralls.io/repos/github/scrthq/Vaporshell/badge.svg?branch=master"
      alt="Coveralls.io - Code Coverage" title="Coveralls.io - Code Coverage" />
  </a>&nbsp;&nbsp;&nbsp;
  <!-- PS Gallery -->
  <a href="https://www.PowerShellGallery.com/packages/VaporShell">
    <img src="https://img.shields.io/powershellgallery/dt/Vaporshell.svg?style=flat"
      alt="PowerShell Gallery - Install VaporShell" title="PowerShell Gallery - Install VaporShell" />
  </a>&nbsp;&nbsp;&nbsp;
  <!-- Gitter -->
  <a href="https://gitter.im/VaporShell/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge">
    <img src="https://badges.gitter.im/VaporShell/Lobby.svg"
      alt="Gitter - Chat" title="Gitter - Chat" />
  </a>&nbsp;&nbsp;&nbsp;
  <!-- Slack Invite -->
  <a href="https://scrthq-slack-invite.herokuapp.com/">
    <img src="https://img.shields.io/badge/chat-on%20slack-orange.svg?style=flat&logo=slack"
      alt="Slack - Chat" title="Slack - Chat" />
  </a>&nbsp;&nbsp;&nbsp;
  <!-- Slack Status -->
  <a href="https://scrthq-slack-invite.herokuapp.com/">
    <img src="https://scrthq-slack-invite.herokuapp.com/badge.svg"
      alt="Slack - Status" title="Slack - Status" />
  </a>
</div>

<div align="center">
  <h3>
    <a href="https://vaporshell.io">
      Website
    </a>
    <span> | </span>
    <a href="https://vaporshell.io/docs/">
      Docs
    </a>
    <span> | </span>
    <a href="https://vaporshell.io/docs/examples">
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
  <sub>Built with ❤︎ by <a href="https://twitter.com/scrthq">Nate Ferrell</a>. Looking for contributors!
</div>


## Table of Contents
- [Table of Contents](#table-of-contents)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Tips](#tips)
  - [Working with Credentials](#working-with-credentials)
  - [Bare Necessities](#bare-necessities)
- [Examples](#examples)
- [In Action](#in-action)
- [License](#license)
- [Changelog](#changelog)

## Features

- __built from AWS's [CloudFormation spec sheet](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-resource-specification.html):__ 100% coverage of all available resource and property types
- __runs on any OS:__ developed and tested in Windows, Ubuntu, and macOS on PowerShell v3-6
- __validates everything:__ built to make resulting templates reliable by leveraging parameter validation built into PowerShell
- __goes turbo:__ package and deploy your templates **fast** with one command: `vsl vaporize`


## Prerequisites

- PowerShell 3+
  - On Linux or macOS? [Grab PowerShell 6 here!](https://github.com/powershell/powershell#get-powershell)
- .NET 4.5.0+ OR .netstandard 1.3+
  - if you have PowerShell 4 or greater, you're covered!

**Recommended:** [ AWS Labs `cfn-flip`](https://github.com/awslabs/aws-cfn-template-flip)
> If you are working with YAML templates, you need to install `cfn-flip`. VaporShell uses `cfn-flip` under the hood to work with YAML templates, as PowerShell does not natively support YAML at this time. If you are only working in JSON, then `cfn-flip` isn't necessary.


## Installation

On PowerShell 5+ or [have PowerShellGet installed](https://www.microsoft.com/en-us/download/details.aspx?id=51451)? Install directly from the PowerShell Gallery:

```powershell
Install-Module VaporShell -Scope CurrentUser
```

Not on PowerShell 5+ and can't install PowerShellGet? You're covered as well:

```powershell
Invoke-Expression (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1")
```
**Please inspect code before you run it. Here's a handy link to that raw content for you to review: [Install-VaporShell.ps1](https://raw.githubusercontent.com/scrthq/VaporShell/master/Install-VaporShell.ps1)**.


## Tips

### Working with Credentials

If you are planning on packaging or deploying to CloudFormation, you will need to setup credentials in your local Shared Credentials file. _If you are using the AWS command-line interface (CLI) and already have setup credentials, then you should be ready to go._

You can update or add a credential profile with `Set-VSCredential`:

```powershell
Set-VSCredential -AccessKey $accessKey -SecretKey $secretKey -Region USWest1 -ProfileName DevAccount
```

### Bare Necessities

When building templates with VaporShell, there are typically a few items that you'll want to include in your build script:

1. Create a template object by calling one of these into a variable
    - `$template = Initialize-VaporShell`
        - Use when starting from scratch
    - `$template = Import-VaporShell -Path .\template.json`
        - Use when importing from an existing template to build off of
2. Build out your template by using the object's ScriptMethods:
    - `$template.AddResource()`
    - `$template.AddParameter()`
    - `$template.AddOutput()`
    - etc....
3. Export your template to local file or `stdout` (useful for piping directly into `New-VSStack` or other functions that support TemplateBody as pipeline input)
    - `Export-VaporShell -VaporshellTemplate $template -Path .\template.json`
        - This will output the template as `template.json` in your working directory
    - `Export-VaporShell -VaporshellTemplate $template`
        - This will output the template to `stdout` as a single string
    - `$template.ToJSON()`
        - This script method on the template object performs the same function as `Export-VaporShell -VaporshellTemplate $template` and outputs the string template as JSON to `stdout`
    - `$template.ToYAML()`
        - This does the same thing as the `ToJSON()` script method, but outputs to YAML (`cfn-flip` required)


## Examples

```powershell
#1 Initialize a VaporShell object
$vsl = Initialize-VaporShell -Description "A function triggered on a timer."

#2 Add a Serverless function with local code as the CodeUri and a schedule of 5 minutes (split into multiple lines for readability)
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

<#4 Package and deploy (vsl vaporize) the template file (--tf $TemplateFile) as a change set with parameters:
    - stack name (--sn) 'sched-func'
    - S3 bucket also named 'sched-func' (defaults to the stack name if --s3 is not passed)
    - capabilities: CAPABILITY_IAM (--caps iam)
    - Verbose (--v) enabled
    - Force (--f) enabled (make sure that the bucket is created and objects are uploaded)
    - Watch (--w) the stack events in colorized output after executing the change
#>
vsl vaporize --tf $TemplateFile --sn sched-func --caps iam --v --f --w

```
Check out the [Examples page](https://vaporshell.io/docs/examples) for more.


## In Action

This is a deployment being watched via `Watch-Stack $stackName` to show stack creation and deletion mid-deploy:
![Watch-Stack in action](https://vaporshell.io/images/Watch-Stacks.gif)

## License
[Apache 2.0](https://tldrlegal.com/license/apache-license-2.0-(apache-2.0))

## Changelog

[Changelog](https://github.com/scrthq/VaporShell/blob/master/CHANGELOG.md)
