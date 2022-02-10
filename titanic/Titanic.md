# Titanic approaches - feature engineering
##  1. My own data cleaning 
[My data cleaning] https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Untitled.ipynb
## 2. Review of other projects
### 2.1. [Hyphotesis Testing] https://www.kaggle.com/masumrumi/a-statistical-analysis-ml-workflow-of-titanic

**Nice insights**: The study was conducted through different Hypothesis tests to try to observe if certain variables affected the chances of survival.

Null Hypothesis( H0 ): There is no difference in the survival rate between passengers females and males.

Alternative Hypothesis( HA ): There is a difference in the survival rate between passengers females and males.

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.43.37.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2018.39.26.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2018.39.32.png)


The study rejects the null hypothesis meaning that the survival rate between females and men are not the same. The hypothesis test was checked in a 95% confidence interval but since the P-Value is so low we can reject it at all levels. 
As to be able to run the test, the sex categories where encoded to numerical variables through the following code: 

male = train[train['Sex'] == 1]

female = train[train['Sex'] == 0]


### 2.2. [Categorical Encoding] https://www.kaggle.com/gunesevitan/titanic-advanced-feature-engineering-tutorial
![image](https://user-images.githubusercontent.com/96949872/153478636-33b79e10-a632-42ee-a3f3-390f3197a222.png)

This project does a very nice encoding of a categorical variable. First of all, it creates a new variable called Family size. AS SibSp is the count of siblings and spouse, and Parch is the count of parents and children he adds them up and sums 1 (to include the person itself) so that he obtains the family_size. I first thought this variable wouldn't make much sense since having family or not probable doesn't mean having a better physiological chances of surviving. However, what I ended up thinking is that family try to protect each other so having more family members mean more people that may protect you.

The code: 

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.02.04.png)

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.04.34.png)

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.58.05.png)

However, some of the drawbacks we might find is that we are forgetting people that travels with friend or groups. This may bias our Dataset since we are labeling as alone people who probably is with friends or colleagues.

### 2.3. [Dealing with missing values] https://www.kaggle.com/parulpandey/a-guide-to-handling-missing-values-in-python

What I found nice about it's approach is that she used some tools I didn't know before. The first ones is the Missingno library. This helps us to find the approximately proportion of null values in a very visual way.

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.12.04.png)

I also love the approach through which he tried to find the reason of these null values. He divided it in three different reasons: 
1. Missing Completely at Random (MCAR)
2. Missing at Random (MAR)
3. Missing Not at Random (MNAR)
What is better for the study is that this data missing is completely random (if the reason of missing data was correlated with, for example, age this could introduce a huge bias to our model. To check this, he uses a heatmap and a dendogram. 
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.20.47.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.23.33.png)

### 2.4. [Smote resampling] https://www.kaggle.com/atharvadumbre/titanic-prediction-rfesampling] 
So although I might not totally agree with the approach followed in this project, he applies the smote method to resample and fix at an equal number the survivors and not survivors of the crash. As I said, I might not agree with this approach since the ratio of dead:survive is approximately 60:40 so the data set is quite balance therefore there's no need to be rebalanced. 

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.23.11.png)

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.23.21.png)

### 2.5. [Scaling numerical variables] https://www.kaggle.com/shivadumnawar/titanic-a-complete-tutorial-for-beginners

This project, to be able to use the different numerical variables in a more clear way, he opts for scaling all of them with the Standard.Scaler

Code:

from sklearn.preprocessing import StandardScaler

ss= StandardScaler() 

features= ['Age', 'SibSp', 'Fare']

X_train[features]= ss.fit_transform(X_train[features])

X_test[features]= ss.fit_transform(X_test[features])
