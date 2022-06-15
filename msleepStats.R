
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(lm.beta))

Q1 <- cor.test(msleep$sleep_total, msleep$bodywt)


Q2 <- select(msleep, sleep_total, sleep_rem,brainwt, bodywt)


Q3 <- lm(bodywt ~ vore, msleep)


Q4 <- lm(bodywt ~ vore + sleep_rem, msleep)


Q5 <- msleep%>%
  filter(vore != "omni" & vore != "insecti")%>%
  mutate(vorebin = ifelse(vore == 'carni', 0, 1))



