# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG


![LmMpg](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/SummaryLmDel1.png)
Through analysis of P-Value via comparing each variable's Pr(<lt), interesting questions can be answered by looking at the values of the following variables:
  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - Spoiler Angle (value of 0.3069),  Vehicle Wieght (value of 0.0776), and AWD (value of .18) are higher than the value of 0.05
    - Vehicle Length (value of 2.60e-12) and Ground Clearance (value of 5.21e-08) are significantly lower.
        - Thus, we can assume that Vehicle length and Ground Clearance have a significant impact on milage and their effect cannot be attributed to random chance.
  
  
  - Is the slope of the linear model considered to be zero? Why or why not?
    
    - The p-value for the linear model is significantly lower than the assumed significance level of 0.05, which indicates that the slope of thelinear model is not zero.
    - Assuming the sample size was not large enough to represent the population, Analysing the r-squared value of linear model (value of 0.7149)indicates that it is possible to predict correlation between the variables and fuel consumption.
    
  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - The y-intercept (Value of 5.08e-08) is statistically insignificant; which means that the model can be used to predict with relative accuracy.

## Summary Statistics on Suspension Coils

![TtlSummary](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/totalsummary.png)
Analysing the summary of all the lots it is evident that:
  - All the lots have a mean of 1498.7
  - They have a median of 1500
  - The variance is 62 which is well within spec (~100 PSI)

![LotSummary](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/lotsummary.png)
On a closer look on each lot separately, the following findings present themselves:
  -Lot1 show the lowest variance of 0.979
  -Lot2 show an acceptable variance of 7.469
  -Lot3 however, shows a significant variance of 170


## T-Tests on Suspension Coils

![t.tet](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/T.test%20one%20sample.png)
- The means in this test of all lots are not statistically different, p-value higher than the signigicance value of 0.05.
![lot1](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/Lot1%20ttest.png)
- The means for Lot1 show staistical difference, where p-value for Lot1 is 1.568e-11, which is well below the significance value of 0.05.
![lot2](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/Lot2%20ttest.png)
- The means for Lot2 show staistical difference, where p-value for Lot2 is 0.000591, which is well below the significance value of 0.05.
![lot3](https://github.com/A-Mossa/MechaCar_Statistical_Analysis/blob/main/Resources/Lot3%20ttest.png)
- The means for Lot3 of are not statistically different, p-value of 0.1589 higher than the signigicance value of 0.05.


