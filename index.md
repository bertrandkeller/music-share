---
layout: default
title: Accueil
---

<div class="wrapper">
  Liens vers le cours<br>
  https://bertrandkeller.github.io/music-share/<br>
  https://bertrandkeller.github.io/music-share/plan.html<br>
  https://bertrandkeller.github.io/music-share/edition.html

  <h2 id="textes">Textes</h2>
  {% for image in site.static_files %}
    {% if image.path contains 'documents/textes' %}
    <p><a href="{{ site.url }}{{ image.path }}">{{ image.basename | replace: '_', ' ' }}</a></p>
    {% endif %}
  {% endfor %}

  <div class="gallery">
    <h2 id="illustrations">Illustrations</h2>
    <div class="grid">
    {% for image in site.static_files %}
      {% if image.path contains 'documents/images' %}
        <figure><a href="{{ site.url }}{{ image.path }}"><img src="{{ site.url }}{{ image.path }}" type="audio/mp3" /><figcaption>{{ image.basename  | replace: '_', ' ' | replace: '-', ' '}}</figcaption></a></figure>
      {% endif %}
    {% endfor %}
    </div>
  </div>

<h2 id="morceaux">Morceaux</h2>
    {% for image in site.static_files %}
    {% if image.path contains 'documents/morceaux' %}
    <p>{{ image.basename }}</p>
    <audio controls="controls">
      <source src="{{ site.url }}{{ image.path }}" type="audio/mp3" />
      Votre navigateur ne supporte pas la balise AUDIO.
    </audio>
    {% endif %}
  {% endfor %}

  <div class="gallery">
    <h2 id="videos">Vidéos</h2>
    <div class="grid">
    {% for image in site.static_files %}
      {% if image.path contains 'documents/videos' %}
      <div><video controls src="{{ site.url }}{{ image.path }}"></video></div>
      {% endif %}
    {% endfor %}
    </div>
  </div>
</div>

