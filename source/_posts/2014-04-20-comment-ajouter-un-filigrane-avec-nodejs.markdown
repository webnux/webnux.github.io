---
layout: post
title: "Comment ajouter un filigrane avec nodejs?"
date: 2014-04-20 13:52:25 +0100
comments: true
categories: [NodeJS, Astuces]
---


Je me suis demandé comment faire pour incrusté un bouton play avec nodejs...

## Par exemple :

Vous avez un site de vidéo et vous voulez ajouter un bouton play incrusté à la minuature de la vidéo.

Cela peut etre pour divers raison, par exemple dans mon cas je souhaite optimisé le taux de clique lorsque qu'une vidéo d'un de mes sites est partagé sur facebook ou autres réseaux sociaux. comment faire?

<!-- more -->


## Dépendances

* node
* npm
* [easy-gd](https://github.com/furagu/easy-gd)

## Installation

Vous devez d'abord installer easy-gd

<pre>
npm install easy-gd
</pre>


## Exemple de code pour l'incrustation du bouton play dans une image quelconque.

{% include_code watermark.js %}

## Executez le code !

<pre>
node watermarking.js
</pre>

## Résultats

Nous avons cette image :

<img src="/images/posts/watermarking/original.jpg" class="center" alt="original" />

Nous voulons incruster un bouton play dans notre image (de format png pour la transparence) :

<img src="/images/posts/watermarking/watermark.png" class="center" alt="watermark" />

Le résultat obtenue grâce à nodejs et easy-gd :

<img src="/images/posts/watermarking/resized.jpg" class="center" alt="result" />

## Conclusion

On peut facilement intégrer ce code sur notre site en production. On peut aussi parcourir toutes les images d'un dossier et incruster le bouton play sans avoir à utiliser photoshop ou gimp.
