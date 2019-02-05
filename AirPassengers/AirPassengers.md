Exploring Air Passengers Dataset
================
Siddharth Jain

Air Passengers Dataset Analysis
===============================

### Visualizing and analysing the air passengers data

``` r
data("AirPassengers")
df <- AirPassengers
print(summary(df))
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##   104.0   180.0   265.5   280.3   360.5   622.0

``` r
start(df)
```

    ## [1] 1949    1

``` r
plot(df)
```

![](AirPassengers_files/figure-markdown_github/unnamed-chunk-1-1.png)

``` r
plot(aggregate(df,FUN=mean))
```

![](AirPassengers_files/figure-markdown_github/unnamed-chunk-1-2.png)

``` r
boxplot(df~cycle(df))
```

![](AirPassengers_files/figure-markdown_github/unnamed-chunk-1-3.png)
