# load data aapl_log_returns.csv
aapl_data = aapl_log_returns

# install rugarch package
install.packages("rugarch")
library(rugarch)

# install forecast package
install.packages("forecast")
library(forecast)

# install ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# rename the column name from 'Log Return' to 'log_return'
colnames(aapl_data) <- c('date', 'log_return')

# convert the dates in date column to Date format in a new column
aapl_data$date <- as.Date(aapl_data$date, format = "%Y/%m/%d")

# plot a line graph of the log return
ggplot(aapl_data, aes(x = date, y = log_return)) + geom_line() + ggtitle("AAPL Log Return") + xlab("Date") + ylab("Log Return")

