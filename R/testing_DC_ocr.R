library(hunspell)
library(pdftools)
library(textreadr)
library(tidyverse)

t <- pdf_text("~/Documents/DC_test/FWS memo on SSAs_enhance.pdf") %>%
  str_split("\n") %>% unlist()
writeLines(t, con = "~/Documents/DC_test/FWS memo on SSAs_enhance.txt")

p <- pdf_text("~/Documents/DC_test/fr148_ocr1.pdf") %>%
  str_split("\n") %>% unlist()
writeLines(p, con = "~/Documents/DC_test/fr148_ocr1.txt")

d <- read_docx("~/Documents/DC_test/fr148_ocr1.docx")
writeLines(d, con = "~/Documents/DC_test/fr148_ocr1_textreadr.txt")

dtp <- pdf_text("~/Downloads/indigo_1982_DTPOCR.pdf") %>%
  paste(collapse = "\n") %>%
  unlist(recursive = TRUE) %>%
  str_split("\n") %>% unlist()
ad <- pdf_text("~/Documents/indigo_1982_OCR150.pdf") %>%
  paste(collapse = "\n") %>%
  unlist(recursive = TRUE) %>%
  str_split("\n") %>% unlist()
dtp_hun <- lapply(dtp, hunspell) %>% unlist(recursive = FALSE)
dtp_hun_bad <- unlist(dtp_hun)
dtp_hun_cnt <- lapply(dtp_hun, length) %>% unlist()
ad_huns <- lapply(ad, hunspell) %>% unlist(recursive = FALSE)
ad_huns_bad <- unlist(ad_huns)
ad_huns_cnt <- lapply(ad_huns, length) %>% unlist()

dtp_3c <- pdf_text("~/Downloads/fr148_dtp.pdf") %>%
  paste(collapse = "\n") %>%
  unlist(recursive = TRUE) %>%
  str_split("\n") %>% unlist()
