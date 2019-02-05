data("AirPassengers")
df <- AirPassengers
print(summary(df))

start(df)

plot(df)

plot(aggregate(df,FUN=mean))

boxplot(df~cycle(df))