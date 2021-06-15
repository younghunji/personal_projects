# Determining the Best Classification Model for Loan Default Prediction

In this project, I trained a classification model for predicting loan status (i.e., paid off versus in collection). The dataset consists of data on ***N*** = 500 loans and was obtained from *Kaggle* via the following link: [Loan Data](https://www.kaggle.com/zhijinzhai/loandata).

After an initial exploration of the dataset, **five features** were selected for model development. Subsequently, the dataset was split into training (80%) and testing (20%) sets.

Using the training dataset, classification model instances were built using the following algorithms:

-   K Nearest Neighbor(KNN)
-   Decision Tree
-   Support Vector Machine
-   Logistic Regression
-   XGBoost

All hyperparameters were tuned using **5-fold cross validation** and **Bayesian optimization** (in the case of XGBoost classification). Based on a comparison of the models' mean CV scores (specifically the weighted F1 scores), an XGBoost classification model was determined to be optimal (F1 score = 0.75, Jaccard index = 0.65, log loss = 0.47).

Evaluation of the final model using the testing dataset yielded the following metrics: **F1 score = 0.74, Jaccard index = 0.64, log loss = 0.45**. Limitations and future directions are discussed.

Click to view [notebook](https://nbviewer.jupyter.org/github/bloonsinthesky/Data-Science-Portfolio/blob/main/Determining%20the%20Best%20Classification%20Model%20for%20Loan%20Default%20Prediction/Determining%20the%20Best%20Classification%20Model%20for%20Loan%20Default%20Prediction.ipynb)
