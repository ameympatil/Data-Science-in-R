

library(gmodels)

install.packages('nycflights13')

data<- nycflights13::flights
data

dep_delay<- data$dep_delay

ar_delay<- data$arr_delay

dep_delay1<- dep_delay[!is.na(dep_delay)]

dep_delay1
ci(dep_delay1)


arr_delay<- ar_delay[!is.na(ar_delay)]

ci(arr_delay)
