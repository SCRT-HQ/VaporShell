---
layout: page
title: Glossary
description: Help content for each function in VaporShell
label1: Category
data1: Documentation
label2: Depth
data2: Deep
---



## SDK Integrations
_The following functions wrap the AWS .NET SDK to provide full CloudFormation management capabilities directly from VaporShell_

### CLI Tools
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "supersets" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>

***

### SDK Wrappers
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "sdk-wrappers" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>

## Static Functions
_The following functions are individually built to fill a specific role in template creation_

### VaporShell Core
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "core-functions" or item.tag == "primary-functions" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Intrinsic Functions
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "intrinsic-functions" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Condition Functions
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "condition-functions" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Transforms
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "transform" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Resource Helpers
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "resource-helpers" or item.tag == "resource-attributes" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>

***

## Resource Types and Property Types
_The following functions are built via automation against Amazon's Resource Type & Resource Property Type spec sheet_

### Serverless
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "serverless" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Resource Types
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "resource-types" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>


### Resource Property Types
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "resource-property-types" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>