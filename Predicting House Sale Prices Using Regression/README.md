# Predicting House Sale Prices Using Regression

In this project, I trained a regression model for predicting house sale prices in King County, Washington, U.S. The dataset consists of data on __*N* = 21,613__ house sales from May 2014 to May 2015 and was obtained from *Kaggle* via the following link: ["House Sales in King County, USA" Kaggle Dataset](https://www.kaggle.com/harlfoxem/housesalesprediction).

After an initial exploration of the dataset, **17 features** were selected based on their strength of correlation with the target variable (i.e., price). Subsequently, the dataset was split into training (75%) and testing (25%) sets.

Using the training dataset, regression model instances with varying **polynomial** degrees (from 1 to 3), regularization types (i.e., **ridge, lasso, elastic net**), and extreme gradient boosting (**XGBoost**) were developed, evaluated, and compared. All hyperparameters were tuned using **5-fold cross validation** and **Bayesian optimization** (in the case of XGBoost regression). Based on a comparison of the models' mean CV scores (specifically the coefficient of determination *R*<sup>2</sup> and root mean squared error [RMSE] scores), an XGBoost regression model was determined to be optimal (*R*<sup>2</sup> = .88, RMSE = 1.28e+05).

Evaluation of the final model using the testing dataset yielded the following metrics: __*R*<sup>2</sup> = .87, RMSE = 1.33e+05__. Limitations and future directions are discussed.

Click to view [notebook](https://nbviewer.jupyter.org/github/bloonsinthesky/Data-Science-Portfolio/blob/main/Predicting%20House%20Sale%20Prices%20Using%20Regression/Predicting%20House%20Sale%20Prices%20Using%20Regression.ipynb)
