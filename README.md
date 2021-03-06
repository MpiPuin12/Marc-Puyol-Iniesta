# Lab | [Imbalanced data](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Lab%2008_02.ipynb)
## 1.Data cleaning 
We only have 3 independent variables which don't have null values so we can save all the filling nulls steps. 
## 2.Building a model 
### 2.1. Extracting the target and independent variables (and scaling them):

We first of all extract the target variable (The churn Variable), we use y = (df.Churn == 'Yes').astype(int)so as to have the yes/no values as a numeric dummy variable . After, we extract the independent variables that we'll use for trying to predict the churn probability(tenure, SeniorCitizen, MonthlyCharge). For the these independent variables, due to the fact that all of them are numeric we don't need to separate by numerical and categorical and we can apply the scaling method
to all of them at the same time. 
![Test Image 1](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Captura%20de%20pantalla%202022-02-11%20a%20las%209.47.08.png)

### 2.2. Setting the train and testing set: 

#### 2.2.1. Logistic regression

After the scaling, I prepared the test and train sets by setting the test size as 0.25 and a Random_state of 33. By running the logistic regression, the acurracy score we obtain is accuracy_score(y_test, y_test_pred)= 0.7915956842703009. However, is very important to also plott the confusion matrix, specially to detect how many employees that ended up churning were not detected by the model. The total amount of this was 100 which represents a 15% of the predictions. 

![Test Image 1](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Untitled%20Folder/Captura%20de%20pantalla%202022-02-11%20a%20las%2017.26.32.png)

#### 2.2.2. Smote resampling

We can try to compensate the sample (the churn class is in clear minority) and see if this will improve the performance of our model. The first resampling method we used was the smote resampler. This consists on oversampling the minority class (in this case the churn set) so as to balance both classes. We afterwards run the same regression as before to see if this method improved the performance of the model. As to the acurrancy score, this moves downdars if we compare it with the previous model (now is 0.7533822960958639) and in the confusion matrix, this model also performs worse since the percentage of false negative (people we predicted not to churn who ended doing it) is higher(18% vs 15% before. The percentage of false positive is also higher.) 

![Test Image 1](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Untitled%20Folder/Captura%20de%20pantalla%202022-02-11%20a%20las%2017.26.19.png)

#### 2.2.2. Tomek resampling

The second method used is tomek. This method consists in undersampling the minority class so that we kind of balance the data. Once resampled, we run the same regression as before to see if this method improved the performance of the model. In this case, the acurrancy score is practically the same as in the first model(and quite better than with the smote resampling) and the percentage of false negatives(again, the most important category) is the best of the three. 

![Test Image 1](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/Untitled%20Folder/Captura%20de%20pantalla%202022-02-11%20a%20las%2017.26.45.png)
