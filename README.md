# MechaCar_Statistical_Analysis

## Software 
R Studio

## Linear Regression to Predict MPG 
<img width="767" alt="Screen Shot 2022-08-30 at 11 55 21 PM" src="https://user-images.githubusercontent.com/104872971/187589393-c49fe6a5-cfa9-4553-a657-7475b0d69c18.png">

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? <br/>
 Vehicle Length and Ground Clearance as their p-values calculated are less than 0.05

- Is the slope of the linear model considered to be zero? Why or why not? <br />
  The slope is NOT considered to be zero as we can interpret from the Multiple R-squared to give a strong correlation with a value of 0.71 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The total summary and individual lot summary are calculated and shown below: 
We can see only lot 3 exceeds 100 pounds per square inch. 

- Total Summary

<img width="336" alt="Screen Shot 2022-09-01 at 6 01 48 PM" src="https://user-images.githubusercontent.com/104872971/188020758-ef4453d2-ec07-428e-8100-fba9f94ce7fa.png">

- Lot Summary

<img width="490" alt="Screen Shot 2022-09-01 at 6 01 36 PM" src="https://user-images.githubusercontent.com/104872971/188020739-254b7357-8243-4afb-84b0-ffed30c227f6.png">


## T-Tests on Suspension Coils

With the help of R, t-tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. All the results are shown below:<br/>
Lot 3 results only show a statistical difference with a p-value less than 0.05

- Across All 3 Lots
<img width="782" alt="Screen Shot 2022-09-01 at 5 59 02 PM" src="https://user-images.githubusercontent.com/104872971/188020372-79e4a16e-c5de-4e37-8d57-c0b88a803fac.png">

- Lot 1
<img width="785" alt="Screen Shot 2022-09-01 at 5 55 33 PM" src="https://user-images.githubusercontent.com/104872971/188021151-6507a2e5-f5b6-4c3f-a824-2bb1bba454db.png">

- Lot 2
<img width="785" alt="Screen Shot 2022-09-01 at 5 56 17 PM" src="https://user-images.githubusercontent.com/104872971/188020154-1388e3f5-5ed9-43b3-a48c-cfe28a6a947a.png">

- Lot 3
<img width="785" alt="Screen Shot 2022-09-01 at 5 56 32 PM" src="https://user-images.githubusercontent.com/104872971/188020164-7752389e-fd7f-461e-8bb6-ef56ef59d3ac.png">

## Study Design: MechaCar vs Competition

A statistical study to compare the fuel consumption for MechaCar vs Competition according to their weight classes. 

What metric or metrics are you going to test?<br/>
- Vehicle Weight
- Fuel Consumption

What is the null hypothesis or alternative hypothesis?<br/>
- Ho: The heavier the car, the car consumes more fuel
- Ha: The heavier the car, the car consumes less fuel 

What statistical test would you use to test the hypothesis? And why?<br/>
- R-squared value and p-value to find any correlation between vehicle weight and car fuel consumption

What data is needed to run the statistical test?
- Vehicle weight data for all cars
- Fuel consumption for each weight classes
