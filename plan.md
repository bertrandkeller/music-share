---
layout: page
title: Plan du cours
---

## Objectifs

  1. Savoir Formater du contenu destiné à la publication sur le web
  2. Utiliser des outils collaboratifs pour dialoguer dans un groupe

Ressource <a href="https://bertrandkeller.github.io/music-share/documents.zip">Documents exemple à reformater</a>

## 1. Le web

  > Le World Wide Web (WWW), littéralement la « toile (d’araignée) mondiale » communément appelé le Web, et parfois la Toile, est un système hypertexte public fonctionnant sur Internet. Le Web permet de consulter, avec un navigateur, des pages accessibles sur des sites. L’image de la toile d’araignée vient des hyperliens qui lient les pages web entre elles
  **-Wikipedia-**

Le web est caractérisé par le protocole http (Hyper text transfert protocole). Une URL (pour Uniform Resource Locator, signifiant littéralement « localisateur de ressource uniforme ») est une chaîne de caractères décrivant l’emplacement d’une ressource.

> Tout est ressource et possède une url.

<br>

<a href="/assets/images/chart-data-loading.png">![Data loading](/assets/images/chart-data-loading.png)</a>

## 2. Formater des contenus web

  - Les fichiers :: Better Finder Rename, ReNamer => Renommage de fichiers par lots
  - Les textes :: Mu, IaWriter, Macdown, TexteEdit => Editer du texte en Markdown
  - Les images :: XnConvert, ImageResizer for Windows, Radical Image Optimization Tool, https://tinypng.com/ => Images homogènes et légères
  - Les audios :: https://www.aconvert.com/audio/ => fichiers audios léger à charger
  - Les vidéos :: Handbrakebatch => Vidéo pour la diffusion sur le web

### Les fichiers

*Exemple classique*

```
|-- Documents
    |-- choré-spectacle.docx
    |-- IMG_9128.JPG
    |-- image234.jpeg
    |-- MVI_9510.m4v
    |-- video-maurice.m4v
    |-- plage.jpeg
    |-- texte-repet.txt
    |-- texte-repet-v2.txt
    |-- texte-repet-V2-retouche.avi
    |-- texte-repet-v2.2-final.avi
```

*Exemple d'arborescence rangée*

```
|-- Documents
    |-- Images
      |-- Image-1.jpg
      |-- Image-2.jpg
      |-- Image-3.jpg
    |-- Textes
      |-- Texte-1.txt
      |-- Texte-2.txt
      |-- Texte-3.txt
    |-- Vidéos
      |-- Video-1.avi
      |-- Video-2.avi
      |-- Video-3.avi
```

*Exemple de nommage de fichiers*
```
|-- Documents
    |-- Images
      |-- 20170509-Pierre-Deschamps-nuit-etoile.jpg
      |-- 20170317-Jean-Jacques-matin-calme.jpg
      |-- 20170426-Simon-delacorde-souffle.jpg
    |-- Textes
      |-- 20170506-le-crescendo.md
      |-- 20170403-les-harmoniques.md
      |-- 20160231-ensemble.md
    |-- Vidéos
      |-- 20170503-le-maestro.avi
      |-- 19990923-marciac-winton-marsalis-master-session.avi
      |-- 20070434-jean-michel-au-saxo.avi
```

### Les textes

Le texte représente le contenu le plus courant sur le web, mais aussi le plus recherché et le plus facilement indexable.

En passant par un moteur de recherche les utilisateurs passent par l'écriture d'une recherche textuelle. Les résultats vont faire apparaître selon la pertinence du nom de la page, de sa description, de son contenu et des contenus alternatifs servant à décrire les médias.

Les moteurs de recherche utilisent les règles élémentaires pour indexer les pages. Une page est constituée :

- d'un titre
- d'une description
- d'un contenu qui peut être composé de :
  - Titres
  - Paragraphes
  - Listes à puces
  - Citations
  - Médias

Pour la rédaction de contenus web, il est pertinent de respecter une hiérarchie de titres (Titre 1, titre 2, chapô,…) et de décrire chacun des ressources par une alternative textuelle.

### Les images

Les images sont insérées dans une page web par l'appel à une ressource externe. Cette image est stockée sur un serveur et possède sa propre URL.

**Code source de l'appel d'une image**

`<img src="le_chemin_de_limage.jpg" alt="Description de l’image">`

Chaque appel à une image sur une page web représente un appel HTTP et un coût en temps de chargement correspondant au poids de l'image. Plus une image est lourde plus le temps de chargement d'une page est long. Une page web ne doit pas excéder idéalement 1Mb.

Voici un exemple de code pour gérer l'affichage d’une image adaptée pour différentes tailles d'écrans. On charge un image de résolution différente en fonction de la dimension de l'écran.
`<img src="default.png" srcset="small.png 320w, medium.png 640w, large.png 1024w, xl.png 1920w" sizes="(min-width:20em) and (max-width:50em) 20em, (min-width:50em) and (max-width:80em) 40em, (min-width:40em) 10em" alt="Test" />`

**Droits à l'image**



### Les audios

Les contenus audios sont beaucoup consommés sur le webs sous forme de musique. Néanmoins, ils ne sont pas assez utilisé au regard de la consommation de vidéos.

Il est possible de mettre en ligne de fichier assez long et pourtant très léger (pour de la voix ou un besoin qualitatif réduit).

Il existe des plateformes d'enregistrement ou de diffusion de podcasts.
https://www.spreaker.com/

`<audio controls="">`
  `<source src="toto.opus" type="audio/ogg; codecs=opus"/>`
  `<source src="toto.ogg" type="audio/ogg; codecs=vorbis"/>`
 `<source src="toto.mp3" type="audio/mpeg"/>`
`</audio>`

### Les vidéos

Les vidéos sont des contenus extrêmement consultées sur le web (Chaîne Youtube…). Cependant ce qu'on oublie de signaler c'est que le poids important des vidéos qui n'a rien à voir avec celui des textes (hyper léger) et des images (qui peuvent être optimisées et mises en caches).

Une vidéo "streamée" est téléchargée par le navigateur pour être lue par l'appareil. Il n'y a pas de lecture à distance d'un fichier en ligne. Celà affecte donc énormémement la bande passante. C'est directement lié à la taille en octet du fichier.

**Comme pour l'image, on procède à un appel à une ressource externe.**

`<video controls src="le_chemin_de_lavideo.mp4"></video>`

**Mais avec les soucis de copyright sur les formats, nous devons appeler plusieurs formats différents.**

`<video width="400" height="222" controls="controls">`
  `<source src="video.mp4" type="video/mp4" />`
  `<source src="video.webm" type="video/webm" />`
  `<source src="video.ogv" type="video/ogg" />`
  `Ici l'alternative à la vidéo : un lien de téléchargement, un message, etc.`
`</video>`



## 3. Les outils collaboratifs

  - Trello (trello.com)
  - Evernote (evernote.com)
  - Github (github.com)

### a. Trello

Créer un processus de partage et de création avec Trello.

 - Créer des colonnes
 - Créer des cartes
 - Documenter la carte
 - Ajouter des ressources
 - Commenter une carte

### b. Evernote

Documenter de manière collaborative des notes pour une création.

 - Créer une note
 - Créer un carnet partagé

### c. Trello

Lier des documents connexes au processus de création.

 - Lier un carnet avec une carte
 - Lier des documents google drive

### d. Github

Créer une page de documentation en ligne

 - Ajouter une ressource
 - Modifier une ressource
