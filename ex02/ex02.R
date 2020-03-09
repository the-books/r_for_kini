# install.packages('rvest')

library(rvest)


# 'https://auto.naver.com/bike/lineup.nhn?bikeNo=5134'
# 'https://auto.naver.com/bike/mnfcoMain.nhn?mnfcoNo=1'


auto_naver <- 'https://auto.naver.com'
mnfco_main <- '/bike/mnfcoMain.nhn?mnfcoNo='

x <- 17


mnfco_x <- paste0(auto_naver, mnfco_main, x)


html.mnfco_no <- read_html(mnfco_x)


html.mkr_group <- html_node(html.mnfco_no, '.mkr_group')


html.bike_lst <- html_nodes(html.mkr_group, '.bike_lst')


html.bike_a <- html_nodes(html.bike_lst, 'a')


links <- html_attr(html.bike_a, 'href')


write.csv(links, "links.csv")


