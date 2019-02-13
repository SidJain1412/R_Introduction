R and Data Science Introduction
================
Siddharth Jain
13 February 2019

Introduction
------------

**Data Science = Statistics/Maths + Coding + Domain/Business Knowledge**

Art of uncovering insights and trends behind data

Data
----

3 main categories

-   Structured (Databases)
-   Semi Structured (XML/ JSON/ Web pages)
-   Unstructured (Audio/ Video/ Image/ Natural Language)

Structured data = 20% of all data

Big Data
--------

Data whose scale, diversity, distribution and/or timeliness requires advanced technical architectures and analytics to enable insights.

Example: NY Stock Exchange

-   Huge volume
-   Complexity of datatypes and structures
-   Speed of new data creation
-   High growth

Drivers of Big Data:

-   Opportunity to enable innovative new business models
-   Potential for new insights
-   Exponential data growth
-   New formats of data
-   New sources of data (live clicks, streaming data, social networks)
-   Traditional solutions aren't working as well as they should
-   Cost of data systems is increasing
-   Open source data

**3Vs: Volume, Variety, Velocity**

**Importance** of Big Data:

-   Cost reduction
-   Time reduction
-   Smart decision making
-   Optimized offerings

Data Engineering
----------------

Data engineers help Data scientists do their jobs more effectively.

Gather, collect, store, batch process, and serve data to data scientists.

-   Wrangling: Manipulating raw data to make it useful for analytics/ for a ML model
-   Cleaning: Missing values, insufficient parameters
-   Preparation: Normalization, transforming input features, etc.

R Programming
-------------

Some important Data Structures in R:

1.  Vector (similar types of data)
2.  Matrix (2 dimensional)
3.  List (data of mixed types)
4.  Array (vector with one or more dimensions)
5.  Data Frames (each component of same length)
6.  Factors (Used to store categorical data)

#### R Data Types

-   Logical (TRUE, FALSE)
-   Numeric (12.3, 5, 1)
-   Integer (2L, 34L, 0L)
-   Complex (3+2i)
-   Character ('a', "Hello")
-   Raw (Use charToRaw to convert to ASCII values)

Everything in R is an object, and objects have attributes (identifiers).

-   Name
-   Dimension names (`dimnames`)
-   Class
-   Length

#### Vectors

Use the `c` keyword to concatenate items into a vector.

`<-` is the assignment operator in R. (`=` can also be used in most cases)

``` r
a <- c(1.8, 4.5, 3.3, 0.3)
print(typeof(a))
```

    ## [1] "double"

Creating a random vector with 5 elements, printing its sum

``` r
x <- rnorm(5)
print(x)
```

    ## [1]  0.4134183  1.1264617 -1.5703808  0.9855681 -0.7841961

``` r
print(sum(x))
```

    ## [1] 0.1708711

Other built in arithmetic functions

-   sum() for total sum of vector
-   var() for variation
-   mean() for mean of the vector
-   min() and max() to find minimum and maximum elements

Sequences in R

``` r
x <- seq(1, 5)
print(x)
```

    ## [1] 1 2 3 4 5

`by` attribute can be passed to seq function to create steps

``` r
y <- seq(-1, 0, by=0.1)
print(y)
```

    ##  [1] -1.0 -0.9 -0.8 -0.7 -0.6 -0.5 -0.4 -0.3 -0.2 -0.1  0.0

#### Matrices

Creating a 3x3 matrix in R

``` r
vector1 <- c(2,9,3)
vector2 <- c(10,16,17,13,11,15)

colnames = c("Col1", "Col2", "Col3")
rownames = c("Row1", "Row2", "Row3")
result <- array(c(vector1,vector2),dim = c(3,3), dimnames = list(colnames,rownames))

print(result)
```

    ##      Row1 Row2 Row3
    ## Col1    2   10   13
    ## Col2    9   16   11
    ## Col3    3   17   15

Creating an empty 2x3 matrix

``` r
m = matrix(0.0, nrow=2, ncol=3) # 2x3
print(m)
```

    ##      [,1] [,2] [,3]
    ## [1,]    0    0    0
    ## [2,]    0    0    0

Checking the class of the object

``` r
print(class(m))
```

    ## [1] "matrix"

Checking type of values

``` r
print(typeof(m))
```

    ## [1] "double"

Checking length

``` r
print(length(m))
```

    ## [1] 6

#### Lists

Collections of mixed type data objects

The objects in a list are known as its components

Example

``` r
lst <- list(name = "Sid", height = "6", num_children = 3, child_ages = c(6, 7, 9))
print(lst[[1]])
```

    ## [1] "Sid"

``` r
print(lst$height)
```

    ## [1] "6"

To print 1st component of child\_ages

``` r
print(lst[[4]][1])
```

    ## [1] 6

#### Data Frames

Similar to matrix, may contain categorical as well as numerical data.

It is like a list with components as columns of a table.

``` r
measrmts <- data.frame(gender = c("F", "M", "M"), ht = c(180, 155, 165), wt = c(60, 80, 75))
print(measrmts)
```

    ##   gender  ht wt
    ## 1      F 180 60
    ## 2      M 155 80
    ## 3      M 165 75

``` r
print(measrmts[1, 2])
```

    ## [1] 180

Character vectors in data frame are stored as factor

``` r
class(measrmts$gender)
```

    ## [1] "factor"

Importing data
--------------

Use the `read.csv()` function to read 'comma separated value' (.csv) files.

This function also reads the headers (column names). To read without column names, use `read.table()`

`head` function is used to display first 5 rows, similarly `tail` for last 5.

``` r
my_data = read.csv("test.csv")
print(head(my_data))
```

    ##   age first_name gender
    ## 1  41       Evan   Male
    ## 2  62       Bill   Male
    ## 3  50      Craig   Male
    ## 4  62      Polly Female
    ## 5  53    Gabriel Female
    ## 6  61      Bruce Female

Use `read.delim()` to read a .txt file

`write.csv()` and `write.delim()` can be used to write a file.

``` r
write.csv(measrmts, file="measurements.csv")
```
