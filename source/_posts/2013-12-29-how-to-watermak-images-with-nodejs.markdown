---
layout: post
title: "How to watermak images with nodejs?"
date: 2013-12-29 01:08:25 +0100
comments: true
categories: [NodeJS, Tips]
---


Today I was looking at : how to watermark an image with nodejs?

<img src="/images/posts/watermarking/watermark.png" class="center" alt="watermarking" />

<!-- more -->


## Example

You are running a youtube like website with user uploaded videos. You can use ffmpeg to convert and get the thumbnail of the video. Now how to make a play button over the thumbnail for example?

## Requirements

* node
* npm
* [easy-gd](https://github.com/furagu/easy-gd)

## Setup

First you need to install easy-gd

<pre>
npm install easy-gd
</pre>


## Code example

{% include_code watermark.js %}

## Run the code

<pre>
node watermarking.js
</pre>

## Demo

We have this image :

<img src="/images/posts/watermarking/original.jpg" class="center" alt="original" />

We have this play button (png for transparency) :

<img src="/images/posts/watermarking/watermark.png" class="center" alt="watermark" />

What we got with easy-gd :

<img src="/images/posts/watermarking/resized.jpg" class="center" alt="result" />

## Conclusion

You can easily integrate it into you node.js web app and start watermarking images without the need of photoshop to put the play button one by one.