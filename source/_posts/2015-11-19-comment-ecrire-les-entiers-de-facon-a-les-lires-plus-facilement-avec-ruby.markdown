---
layout: post
title: "Comment écrire les entiers de façon à les lires plus facilement avec Ruby?"
date: 2015-11-20 11:32:39 +0100
comments: true
categories: [Ruby]
description: Voulez vous savoir comment écrire les entiers de façon à les lires plus facilement en Ruby? Comment écrire 1000000000?
---

En Ruby vous avez la possibilité d'écrire les entiers de cette façon :

{% codeblock entiers.rb %}
10000000000
{% endcodeblock %}

équivaut à 

{% codeblock entiers.rb %}
10_000_000_000
{% endcodeblock %}

Vous n'êtes toujours pas convaincu? 

<!-- more -->

Lancez irb et tester !

{% codeblock lang:bash %}
$ irb
irb(main):002:0> 10_000_000_000 == 10000000000
=> true
{% endcodeblock %}

N'est ce pas visuellement plus simple? Votre avis m'intéresse!