---
layout: post
title: "Comment gérer les permissions des fichiers avec Ruby?"
date: 2015-11-19 01:56:58 +0200
comments: true
categories: [Ruby]
description: Comment gérer les permissions avec ruby? Comment faire des chmods sur des fichiers?
---

Aujourd'hui j'ai appris à gérer les permissions avec Ruby. C'est très simple, vous allez voir.


Tout d'abord, on inclut la librairie fileutils.

{% codeblock permissions.rb %}
require 'fileutils'
include FileUtils
{% endcodeblock %}

Ensuite, on fait un chmod, par exemple 755 sur un fichier qui s'appelle ici "monfichier".

{% codeblock permissions.rb %}
chmod 0755, 'monfichier'
{% endcodeblock %}

<!-- more -->

On peut aussi convertir des permissions binaires en octales.

{% codeblock permissions.rb %}
perms = 0b111101101
perms.to_s(8)

chmod perms, 'monfichier'
{% endcodeblock %}

Voilà, c'est simple n'est ce pas? Si vous avez des questions n'hésitez pas.


# Quelques ressources pour aller plus loin

## La documention de Ruby sur FileUtils :

  - http://ruby-doc.org/stdlib-2.2.3/libdoc/fileutils/rdoc/FileUtils.html

## StackOverflow :

  - http://stackoverflow.com/questions/5020710/copy-a-file-creating-directories-as-necessary-in-ruby

## Api Dock :

  - http://apidock.com/ruby/FileUtils
