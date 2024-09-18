---
date: '{{ .Date }}'
lastmod: 
  - :git
draft: true
author: someone@example.com
title: '{{ replace .File.ContentBaseName `-` ` ` | title }}'
description: A short description does here.
hero: false
featured: false
---

Your blog post content goes here.
