data=read.table("C:/Users/vicky/Documents/Coursera/Exploratory Data Analysis/Project 1/household_power_consumption.txt",sep=";",header=T)
colnames(data)
data$Date=as.Date(data$Date,"%d/%m/%Y")
datanew=subset(data,(Date=="2007-02-01") | (Date=="2007-02-02"))
attach(datanew)

Global_active=as.numeric(as.vector(Global_active_power))

png("C:/Users/vicky/Documents/Coursera/Exploratory Data Analysis/Project 1/plot1.png")
hist(Global_active,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.off()
