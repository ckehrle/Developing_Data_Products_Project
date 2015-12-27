---
title       : Fat Free Mass Index
subtitle    : An app to check if athelets are in natural parameters or using illegal supplements
author      : c.Kehrle
job         : yes, have one
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : standalone  # {standalone, draft}
knit        : slidify::knit2slides
---

## The challenge

to check if an athelete in fitness, bodybuilding or any other sports is training cleanly or is there a hint for anabolic steroids supplementation.


--- .class #id 

## Meaning of FFMI
The FFMI is a measure for the mass of muscles of human body. Its based on the height, the weight and the percentage of body fat.Other than the BMI ( Body Mass Index) the FFMI respects the amount of existing mass of muscles in the body.One important point is that looking at it from a genetic potential point of view a FFMI of 25 is considered as theorectic maxmimum which is achievable with normal training parameters. Any values above 25 is considered as an indication of usage of anabolic steroids.

### Formula
The FFMi is calucated by the base values height, weight and body fat percentage.
 
 FFMI = FFM / (G x G) + 6,3 x (1,8 - G)
 FFM = KG * (100 - KFA) / 100
 
* FFM  Fat Free Mass
* KG   Weight in kilogram
* G    Height in meter
* KAF  Body Fat Percentage

--- .class #id 

## sample calucation

Some sample calucation of FFMI.

```r
ffmi <- function(h,w,kfa){ 
  h <-h/100
  round((w*(100-kfa)/100)/(h*h)+6.3*(1.8- h))}
  
result <-ffmi(180,80,10)

print(result)
```

```
## [1] 22
```

--- .class #id 

## FFMI App

The App lets you easily calucate the FFMI. Go the [app website] (https://github.com/ckehrle/Developing_Data_Products_Project) and enter your height and weight and the application will determine your fat free mass index

