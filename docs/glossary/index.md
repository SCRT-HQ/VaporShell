---
layout: pagenodesc
title: Glossary
categories: menu
---

## Function Glossary

### Core Functions
<ul>
    {% for item in site.data.glossarydata %}
      {% if item.tag == "core-functions" %}
        <li><a href="{{ "/docs/glossary/" | prepend: site.baseurl | append: item.title }}">{{ item.title }}</a></li>
      {% endif %}
    {% endfor %}
</ul>