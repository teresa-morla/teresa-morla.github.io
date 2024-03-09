---
layout: conference
title: "Conferences"
permalink: /conferences/
author_profile: true
---

{% assign internationalCount = 0 %}
{% assign nationalCount = 0 %}
{% assign europeanCount = 0 %}

{% for post in site.conferences %}
  {% if post.type == 'international' or post.type == 'european' %}
    {% assign internationalCount = internationalCount | plus: 1 %}
  {% endif %}
{% endfor %}

{% for post in site.conferences %}
  {% if post.type == 'national' %}
    {% assign nationalCount = nationalCount | plus: 1 %}
  {% endif %}
{% endfor %}

<a name="top"></a>
1. [International / European](#international) ({{ internationalCount }})
2. [National](#national) ({{ nationalCount }})

{% include base_path %}

## International

{% for post in site.conferences reversed %}
  {% if post.type == 'international' or post.type == 'european' %}
    {% include archive-single-talk.html %}
  {% endif %}
{% endfor %}

[▲ Back to top](#top)

## National

{% for post in site.conferences reversed %}
  {% if post.type == 'national' %}
    {% include archive-single-talk.html %}
  {% endif %}
{% endfor %}

[▲ Back to top](#top)
