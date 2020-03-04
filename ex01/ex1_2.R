# install.packages('rvest')
# install.packages('ggplot2')
# install.packages('ggmap')
# install.packages('maps')

library('rvest')
library('ggplot2')
library('ggmap')
library('maps')

# https://wuhanvirus.kr/
virus.covid19 <- read_html('https://wuhanvirus.kr/')


virus.covid19 %>% html_nodes(".google-visualization-table-table")

df19 <- html_table(html_nodes(virus.covid19, ".google-visualization-table-table"))
