clean_data<-function(){
        url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        zip<-"energy.zip"
        unzip<-"energy.txt"

        file<-download.file(url,zip , "curl")
        rawdata <- unz(file, unzip)
        data <- read.table(rawdata, header=T, sep=';', na.strings="?", colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
        data <- data[(data$Date == "1/2/2007") | (data$Date == "2/2/2007"),]
        data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")  
        head(data)
}
