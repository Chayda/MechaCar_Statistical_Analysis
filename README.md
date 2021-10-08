# MechaCar_Statistical_Analysis
Performing statistical analysis for fictitious car manufacturer AutosRUs for a prototype called MechaCar, to see if there are variables that affect the vehicles’ performance using two separate datasets.
The mpg dataset (MechaCar_mpg.csv) contains the following variables: vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD (All-Wheel Drive), and mpg (miles per gallon).
The suspension coil dataset (Suspension_Coil.csv) contains the following variables: VehicleID, Manufacturing_Lot, PSI (pounds per square inch).
This analysis will review production data for insights that might help the manufacturing team.

## Linear Regression to Predict MPG
![1_LinRegress](https://user-images.githubusercontent.com/74624855/136634502-d2b60e70-ebb2-4bdf-ab1e-1a95b6ee1db1.png)
Using multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes, considering mpg is a primary measurement of a car’s fuel efficiency.
- Of the variables in the dataset, only the vehicle_length and ground_clearance variables produced an amount that was below the significance value of 0.05 (2.6 x 10-12 and 5.21 x 10-8, respectively).
- The p-value of the linear regression analysis is 5.35 x 10-11, which is much smaller than the assumed significance level of 0.05%. Therefore, it can be stated that there is sufficient evidence to reject the null hypothesis, which means the slope of the linear model is not zero.
- From the linear regression model, the r-squared value is 0.71, which means that roughly 71% of the variability of the dependent variable (mpg) is explained using this linear model. This linear model should be explored further, but the r2 value indicates that the linear model can be used to predict the mpg of MechaCar prototypes effectively and that there is a higher likelihood that future data points would fit the linear regression model. This indicates there is some presence of a relationship between the variables in the dataset and fuel-efficiency (mpg).

## Summary Statistics on Suspension Coils
![2a_total_summary](https://user-images.githubusercontent.com/74624855/136634631-5903ca6e-6efb-4d45-8850-e831f2c0e306.png)
As per the total_summary dataframe which gathers summary statistics for all three lots combined, the variance is 62.29, which does not exceed 100 ppi, but required a more in-depth look at the variance for each individual lot to see if there’s a difference between each lot.

![2b_lot_summary](https://user-images.githubusercontent.com/74624855/136634656-8f9d4666-70f0-4b9c-8258-09556544f7c8.png)
As per the lot_summary dataframe, the variance of the suspension coils for Lots 1 & 2 do not exceed the manufacturing design specification of 100 ppi (0.98 and 7.47, respectively); however, the variance of the suspension coils for Lot 3 is 170.29, which far exceeds 100 ppi.

## T-Tests on Suspension Coils
### Assuming significance value of 0.05:
### POPULATION
![t_test_population](https://user-images.githubusercontent.com/74624855/136634689-1ba465fb-3695-4133-b13a-e718d7bee79c.png)
The p-value of the population t-test is 0.06028, which is higher than the significance value, which means the null hypothesis remains intact and there is no significant relationship.

### MANUFACTURING LOT 1
![t_test_lot1](https://user-images.githubusercontent.com/74624855/136634747-194f3b72-129c-425b-beea-6ba1c8146450.png)
The p-value of the Lot-1 test is 1, which is above the significance value; meaning the null hypothesis remains intact and there is no significant difference.

### MANUFACTURING LOT 2
![t_test_lot2](https://user-images.githubusercontent.com/74624855/136634795-997d435e-de8b-4c09-9d60-ed11b8c75245.png)
The p-value of the Lot-2 test is 0.6072, which is above the significance value; meaning the null hypothesis remains intact and there is no significant difference.

### MANUFACTURING LOT 3
![t_test_lot3](https://user-images.githubusercontent.com/74624855/136634806-a3a9b149-c774-411a-a5cf-df4a53c30638.png)
The p-value of the Lot-3 test is 0.04168, which is below the significance value; meaning there is sufficient evidence to reject the null hypothesis. There is a statistical difference between the mean of Lot-3 and the population, indicating there is a problem with this lot.

## Study Design: MechaCar vs. Competition
