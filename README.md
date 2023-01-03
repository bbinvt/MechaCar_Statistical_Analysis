# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/70111980/210281667-71222210-59cf-478f-93bb-d4e6cc11b2ac.png)

Figure 1

![image](https://user-images.githubusercontent.com/70111980/210281701-72e5c068-b1aa-48d3-af05-d70adc0697ca.png)
Figure 2

##### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- The data calculated in the images above allow us to determine that the vehicle length and ground clearance account for non-random variance in the mpg values. This can be seen by their coeffeicient values, 6.267 for Vehicle Length and 3.546 for Ground Clearance, which are orders of magnitude larger than the other measured variables. In addition the p-values are each respectively less than the p=0.05 value, 2.60e-12 for Vehicle Length and 5.21e-8 for Ground Clearance.

##### Is the slope of the linear model considered to be zero? Why or why not?
- A quick glance we get the feeling that the slope is non-zero because of the calculated coeffiecients being non-zero, however we can confirm the slope is non-zero because the p-value is 5.35e-11 which is less than our assumed significance of p=0.05

##### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- From Figure 2 the r-squared value is 0.7149, which means our model will be able to predict mpg results with about 70% accuracy. 

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/70111980/210283884-00bc0383-aabd-426e-b91b-7d65e0912f8a.png)
Figure 3

![image](https://user-images.githubusercontent.com/70111980/210283905-acfa8654-be62-4ffb-82eb-e3ec59c10c51.png)
Figure 4

##### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
- In total, yes the variance of all manufactured lots is 62.29; however when examining individual lots the criteria is not met. As we can see from Figure 4 the variance of Lot 3 exceeds the 100 pounds per square inch boundary. 


## T-Tests on Suspension Coils

![image](https://user-images.githubusercontent.com/70111980/210284455-04f414f0-28b3-4412-be10-2e0531d79bf4.png)
Figure 5

![image](https://user-images.githubusercontent.com/70111980/210284368-47f78594-8ac5-439c-87ec-ed6a4540ab66.png)
Figure 6

#### Results of T-Tests
- When testing all manufacturing lots we calculate a p-value of 0.06028 which is greater than our assumed p=0.05 meaning there is no statistical difference between the population mean of 1500 psi and the psi across all manufactured lots.
- When examining the individual lots, Lot1 and Lot2 both have p values above 0.05, 1 and 0.6072 respectively. This means we do not have enough evidence to reject the null hypothesis. However, the p-value for Lot 3, 0.04168, is below our assumed p value of 0.05 and therefore we conclude the statistical difference between the populations is significant enough to reject the null hypothesis. 

## Study Design: MechaCar vs Competition

Let's design a study to test the correlation between the horsepower of a vehicle and the ongoing maintenance costs.

##### Metrics to Test
- Horsepower
- Vehicle Maintenance Costs

##### Null Hypothesis and Alternate Hypothesis
- Null Hypothesis (H_0): Cars with lower horsepower have lower ongoing maintenance costs.
- Alternate Hypothesis (H_a): Cars with higher horsepower have higher ongoing maintenance costs

##### Statistical Test
- We can evaluate this hypothesis with a simple linear regression. 

##### Data Required 
- We need the horsepower and ongoing maintenance costs for each model of car from each manufacturer. Then we can examine comparable models, manufacturers, and the population as a whole. 
