MTCars
================
Siddharth Jain
5 February 2019

MT Cars dataset
===============

``` r
data("mtcars")
head(mtcars)
```

    ##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
    ## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

``` r
dim(mtcars)
```

    ## [1] 32 11

### Plotting relation between weight of car and miles per gallon

#### We can see that heavier cars have worse mileage

``` r
plot(mtcars$wt, mtcars$mpg, type="p", xlab="Weight", ylab="Miles Per Gallon")
```

![](MTCars_files/figure-markdown_github/unnamed-chunk-2-1.png)
