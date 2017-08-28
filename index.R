---
title: "Extinct and declining species"
author: "Defenders of Wildlife"
date: "`r Sys.Date()`"
output:
  rmarkdown::html_document:
    css: custom.css
    df_print: paged
    fig_caption: yes
    fig_width: 7
    fig_height: 5
    highlight: tango
    toc: true
    toc_depth: 4
    toc_float: true
---

<script async defer src="https://hypothes.is/embed.js"></script>

library(stringr)
library(dplyr)

src <- "~/Downloads/five_year_review"
fils <- list.files(src, full.names = TRUE, recursive = TRUE)

terms <- c(
  "possibly extinct",
  "probably extinct",
  "likely extinct",
  "may be extinct",
  "no known individuals",
  "no populations are known",
  "no individuals known",

