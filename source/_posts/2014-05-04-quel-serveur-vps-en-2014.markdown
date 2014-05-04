---
layout: post
title: "Quel serveur VPS en 2014?"
date: 2014-05-04 14:56:58 +0200
comments: true
categories: [Serveur, VPS, Cloud]
description: Quel serveur allez-vous utiliser en 2014? Un serveur VPS OVH classic, un serveur cloud DigitalOcean, un serveur VPS Dedimax, un serveur E-C ou un serveur VPS FirstHeberg?
---

J'ai testé pour vous pendant 2 mois plusieurs serveurs VPS dont un serveur VPS OVH Classic, deux serveurs VPS Dedimax, 3 serveurs cloud chez digitalocean, un serveur cloud chez E-C.com et un serveur VPS firstheberg.

# Cloud et/ou VPS?


Un VPS (Virtual Private Server) est un serveur virtuel configuré sur un serveur physique. Sur un VPS, vous possédez un accès complet à votre serveur virtuel (accès root). Les coûts sont réduits car plusieurs serveurs virtuels sont configurés sur un serveur physique.<br />

Je ne vois pas de grosse différence entre un serveur cloud et un serveur VPS. Mais en gros un serveur cloud c'est un serveur virtualisé sur un <strong>cluster de machines</strong> pour vous permettre de rajouter de la ram, de l'espace ou cpu sur demande.

{% img center /images/posts/cloud/serveurs.png %}

<!-- more -->


Comparons maintenant les différents hébergeurs... :)

# L'interface d'administration des hébergeurs

## DigitalOcean

{% img center /images/posts/cloud/digitalocean-cloud-manager.png %}

## OVH

{% img center /images/posts/cloud/ovh-vps-manager.jpg %}

## FirstHeberg

{% img center /images/posts/cloud/firstheberg-vps-manager.png %}

## Dedimax

{% img center /images/posts/cloud/dedimax-vps-manager.jpg %}

## E-C

{% img center /images/posts/cloud/ec-vps-manager.png %}

# Uptime des serveurs VPS et Cloud

## OVH

Très bon uptime sur 30 jours.

## Dedimax

Ils ont des serveurs chez OVH, le uptime est bon aussi. ;)

## DigitalOcean

Le uptime est bon, ils ont plusieurs datacenters. Mes serveurs sont à Amsterdam. Vous avez le choix entre New york, San Francisco, Amsterdam pour l'Europe et Singapour pour l'Asie.

## First Heberg

J'ai eu beaucoup de downtime chez firstheberg, vraiment très déçu. Mais c'est des downtimes court 5min à 10min et c'est reparti. Mais ça peut être un point critique en fonction de vos besoins.

## E-C.com

Je déconseille leurs serveurs cloud, des downtimes allant de 30min à 2heures... C'est vraiment la roulette russe.

# Le prix des serveurs VPS/Cloud 

* VPS FIRST HEBERG : 1,79 € TTC / mois
* VPS DEDIMAX : 2.38€ TTC / mois
* VPS OVH CLOUD CLASSIC : 2,39 € TTC / mois
* DIGITAL OCEAN : 3,7 € TTC / mois
* E-C CLOUD : 3,95 € TTC / mois

# La configuration des serveurs

* VPS FIRST HEBERG : 1 vCore, 1Go RAM, 20 Go espace disque, 100mbps (non garanti*)
* VPS DEDIMAX : 1 vCore (3,1 GHz+), 1Go RAM, 10 Go espace disque, 100mbps (limitation 50 To)
* VPS OVH CLOUD CLASSIC : 1 vCore, 1Go RAM, 10 Go espace disque (Raid 10), 100mbps (Garantis jusqu'à 10 000 Go de données transférées par mois, puis 1 Mbps)
* DIGITAL OCEAN #1 : 1 vCore, 512Mb RAM, 20 Go espace SSD, 1Gbps (1TB de transfert, 2cents / GB au dela...) 
* E-C CLOUD : 1 vCore, 1Go RAM, 50 Go espace disque, 100mbps (Bande passante Illimitée d'où l'abus...)

> *Le réseau fournit est de 100 Mb/s vers internet. La garantie de service est Best-Effort. Le réseau est mutualisé à l'ensemble de l'infrastructure VPS et la disponibilité du réseau est liée à l'utilisation de l'ensemble des utilisateurs.

# Speed tests des serveurs VPS et Cloud

## VPS Cloud DigitalOcean (DataCentre à Amsterdam)

> Testing download speed........................................
>
> Download: 669.88 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 242.35 Mbit/s

## VPS OVH Classic

> Testing download speed........................................
>
> Download: 121.43 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 98.58 Mbit/s

### à titre de comparaison pour un serveur kimsufi :

> Testing download speed........................................
>
> Download: 93.76 Mbits/s
>
> Testing upload speed..................................................
>
> Upload: 90.35 Mbits/s

### et le meilleur pour la fin, un serveur So You Start d'OVH :

> Testing download speed........................................
>
> Download: 444.26 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 172.62 Mbit/s

## VPS FirstHeberg

> Testing download speed........................................
>
> Download: 501.83 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 166.85 Mbit/s

## VPS Dedimax

> Testing download speed........................................
>
> Download: 475.50 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 149.81 Mbit/s

## VPS E-C.com

> Testing download speed........................................
>
> Download: 49.03 Mbit/s
>
> Testing upload speed..................................................
>
> Upload: 69.21 Mbit/s

# Le support des hébegeurs

## OVH

Jamais eu de problème.

## Dedimax

De même.

## First Heberg

Je ne les toujours pas contacté même si je devrais les contacter pour connaitre la source des downtimes... Mais bon je ne souhaite pas poursuivre mon abonnement chez eux donc voilà. Leurs services va peut être s'améliorer avec le temps, ils n'ont pas non plus les mêmes capacités qu'OVH, le géant.

## Digital Ocean

J'ai eu un problème sur l'interfaces d'administration des serveurs cloud. J'ai ouvert un ticket et j'ai eu une réponse dans la minute... :)

## E-C.com

Le support est trop long, 2 semaines pour répondre à un ticket... WTF?

# Conclusion

Je vous conseille de tester les serveurs VPS OVH classic et les serveurs chez [DigitalOcean](https://www.digitalocean.com/?refcode=738b03b223c7).

Ce que j'aime chez [DigitalOcean](https://www.digitalocean.com/?refcode=738b03b223c7) c'est la possibilité de faire des backups de votre serveur, la possibilité de déplacer votre serveur d'un datacenter à un autre en un seul clic. Par ailleurs avec [DigitalOcean](https://www.digitalocean.com/?refcode=738b03b223c7) vous avez la possibilité d'installer le système que vous voulez : Ubuntu, Arch Linux, Debian, Centos, Fedora et j'en passe. :)
Chez [DigitalOcean](https://www.digitalocean.com/?refcode=738b03b223c7), vous avez aussi la possiblité d'installer des distributions prête à l'emploi, comme par exemple (Ruby on Rails, Wordpress, Docker, Mean, GitLab, LAMP, Ghost, Dokku, Redmine) la plupart sont prête à l'emploi sur une version serveur d'Ubuntu LTS 12.04 ou 13.10 :)

