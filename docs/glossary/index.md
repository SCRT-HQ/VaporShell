---
layout: page
title: Glossary
description: Help content for each function in Vaporshell
categories: menu
---

## Static Functions
_The following functions are individually built to fill a specific role in template creation_

### Vaporshell Core
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