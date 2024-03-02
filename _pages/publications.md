---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% assign papersCount = 0 %}
{% assign booksCount = 0 %}
{% assign reportsCount = 0 %}

{% for post in site.publications %}
  {% if post.category == 'paper' %}
    {% assign papersCount = papersCount | plus: 1 %}
  {% endif %}
{% endfor %}

{% for post in site.publications %}
  {% if post.category == 'book' %}
    {% assign booksCount = booksCount | plus: 1 %}
  {% endif %}
{% endfor %}

{% for post in site.publications %}
  {% if post.category == 'report' %}
    {% assign reportsCount = reportsCount | plus: 1 %}
  {% endif %}
{% endfor %}

<a name="top"></a>
1. [Papers](#paper) ({{ papersCount }})
2. [Scientific-technical reports](#scientific-technical-reports) ({{ reportsCount }})
3. [Books and chapters](#books-and-chapters) ({{ booksCount }})

## Papers

{% if site.author.googlescholar %}
  <div class="wordwrap">You can also find my papers on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}

{% include base_path %}

{% for post in site.publications reversed %}
  {% if post.category == 'paper' %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

[▲ Back to top](#top)

<a name="report"></a>
## Scientific-technical reports

{% for post in site.publications reversed %}
  {% if post.category == "report" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

[▲ Back to top](#top)

<a name="book"></a>
## Books and chapters

{% for post in site.publications reversed %}
  {% if post.category == "book" %}
    {% include archive-single.html %}
  {% endif %}
{% endfor %}

[▲ Back to top](#top)
