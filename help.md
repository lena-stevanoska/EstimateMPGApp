

# Estimator for miles per gallons

This application calculates the estimated miles per gallon based on the entry values for car weight (in pounds devided by 1000), type of transmission and number of cylinders.

**ALL VALUES HAVE TO BE ENTERED**

The calculation is automatically trigered with every value update.

## Weight

To enter the correct value for the Weight, make sure first to convert the weight into pounds and then to divide it with 1000. Enter the result by either typing in the field or using the arrows that will go through the whole numbers incremented by 1. For example if the car weighs 3000 lb then enter 3 in the field.

## Transmission type

The transmission type is selected to be Automatic by default, clicking on Manual will automatically triger the calculation for the estimated mpg if the transmission is of Manual type. The display of the entered values is there to confirm what selection was used for the calculation.

## Number of cylinders

The number of cylinders has to be selected for the estimated mpg to be calculated.

## Estimated mpg

The Estimated miles per gallon is calculated using the following prediction model: 

lm(mpg~factor(am)+wt+cyl,data=mtcars)


The mtcars dataset is part of the datasets package in R and contains the values from the tests on 1973-74 model cars done by Motor Trend US magazine in 1974.

