# Titanic approaches - feature engineering
##  1. My own data cleaning 
[My data cleaning] https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Untitled.ipynb
## 2. Review of other projects
### 2.1. [Hyphotesis Testing] https://www.kaggle.com/khageshorgiri/eda-to-classification-titanic-dataset

**Predict the survival of any passanger as 0 or 1.**
Nice insights: The study was conducted through different Hypothesis tests to try to observe if certain variables affected the chances of survival.

Null Hypothesis( H0 ): There is no difference in the survival rate between passengers females and males.

Alternative Hypothesis( HA ): There is a difference in the survival rate between passengers females and males.

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2018.39.17.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2018.39.26.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2018.39.32.png)
![image](https://user-images.githubusercontent.com/96949872/153478630-dd70a9e5-d755-4772-8c25-6b97a08b84a2.png)

The study rejects the null hypothesis meaning that the survival rate between females and men are not the same. The hypothesis test was checked in a 95% confidence interval but since the P-Value is so low we can reject it at all levels. 
As to be able to run the test, the sex categories where encoded to numerical variables through the following code: 

male = train[train['Sex'] == 1]

female = train[train['Sex'] == 0]

### 2.2. [Smote resampling] https://www.kaggle.com/atharvadumbre/titanic-prediction-rfesampling] 
So although I might not totally agree with the approach follow in this project, he applies the smote method to resample and fix at an equal number the survivors and not survivors of the crash. As I said, I might not agree with this approach since the ratio of dead:survive is approximately 60:40 so the data set is quite balance so that there's no need to be rebalanced. 

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.23.11.png)

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.23.21.png)

### 2.3. [Categorical Encoding] https://www.kaggle.com/gunesevitan/titanic-advanced-feature-engineering-tutorial
![image](https://user-images.githubusercontent.com/96949872/153478636-33b79e10-a632-42ee-a3f3-390f3197a222.png)

This project does a very nice encoding of a categorical variable. First of all, it creates a new variable called Family size. AS SibSp is the count of siblings and spouse, and Parch is the count of parents and children he adds them up and sums 1 (to include the person itself) so that he obtains the family_size. I first thought this variable wouldn't make much sense since having family or not probable doesn't mean having a better physiological chances of surviving. However, what I ended up thinking is that family try to protect each others so having more family members mean more people that may protect you.
The code: 
        ![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.02.04.png)
![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2020.04.34.png)

![My Remote Image](https://github.com/MpiPuin12/Marc-Puyol-Iniesta/blob/main/titanic/Captura%20de%20pantalla%202022-02-10%20a%20las%2019.58.05.png)

However, some of the drawbacks we might find is that we are forgetting people that travels with friend or groups. This may bias our Dataset since we are labeling asalone people who probably is with friends or colleagues.
### 2.4. [Dealing with missing values] https://www.kaggle.com/parulpandey/a-guide-to-handling-missing-values-in-python
What I found 
