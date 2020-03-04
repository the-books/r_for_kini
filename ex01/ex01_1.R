# install.packages('devtools')
library('devtools')

install_github('dkahle/ggmap')
library('ggmap')

register_google(key = '***')
