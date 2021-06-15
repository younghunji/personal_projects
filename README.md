# Data-Science-Portfolio

This repository contains a portfolio of my data science and analytics projects completed for professional, research, and learning purposes. Projects are presented in the form of Jupyter notebooks, R markdown files (published at RPubs), online dashboard apps, written reports, powerpoint slides, and video lectures.

Data files for all projects are available in their respective folders or, in the case of large data files, via a URL within the Jupyter notebooks. Jupyter notebooks are are best viewed using [nbviewer](https://nbviewer.jupyter.org/).

## Contents

+ ### Machine Learning
  + [The Battle of the Neighborhoods](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/The%20Battle%20of%20the%20Neighborhoods): *K*-means __clustering__ was used to cluster all neighborhoods in Helsinki based on a selection of neighborhood features. The "optimal" neighborhood cluster for opening a new café was then chosen using a set of business and mathematical assumptions. Neighborhood census and venue data were collected from *Statistics Finland* and via the *Foursquare* API, and then cleaned using SQL queries and pandas.
  + [Predicting House Sale Prices Using Regression](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Predicting%20House%20Sale%20Prices%20Using%20Regression): A series of **regression** models predicting house sale prices were developed and compared. Model instances with varying polynomial degrees, regularization types (i.e., ridge, lasso, elastic net), and extreme gradient boosting were compared using *R*<sup>2</sup> and RMSE scores. All hyperparameters were tuned using 5-fold **cross validation** and Bayesian optimization. 
  + [Determining the Best Classification Model for Loan Default Prediction](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Determining%20the%20Best%20Classification%20Model%20for%20Loan%20Default%20Prediction): A series of **classification** models predicting loan status were developed and compared. Model instances using *k*-nearest neighbor, decision tree, support vector machine, logistic regression, and extreme gradient boosting algorithms were compared using F1 scores, Jaccard indices, and log loss. Parameter tuning via cross validation and Bayesian optimization.
  + [Movie Recommendation Systems](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Movie%20Recommendation%20Systems): Two simple movie recommendation systems were created using (1) **content-based filtering**, which recommends movies similar in genre as those rated highly by the user, and (2) **collaborative filtering**, which recommends movies rated highly by other users with similar inputs, i.e., movies watched and rated.

  *Tools: SQL, Pandas, Numpy, Matplotlib, Seaborn, Folium, Scikit-learn, XGBoost, Hyperopt*

+ ### Data Analysis and Visualization
  + [Gender Research Productivity Gap](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Gender%20Research%20Productivity%20Gap)
  + [Descriptive Analysis of the 2019 Stack Overflow Developer Survey Data](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Descriptive%20Analysis%20of%20the%202019%20Stack%20Overflow%20Developer%20Survey%20Data)
  + [Automobile Sales, Recalls, and Sentiment](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Automobile%20Sales%2C%20Recalls%2C%20and%20Sentiment)
  + [Airline Performance Dashboard Using Plotly Dash](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Airline%20Performance%20Dashboard%20Using%20Plotly%20Dash)
  + [Visualizing Tesla and GameStop Stock Data](https://github.com/bloonsinthesky/Data-Science-Portfolio/tree/main/Visualizing%20Tesla%20and%20GameStop%20Stock%20Data)

  *Tools: GGPlot, Tableau, Cognos, Plotly, Dash, BeautifulSoup*

+ ### Teaching Data Analysis
  + Main Presenter
    + [Logistic Regression, Mediation, and Moderation](https://aalto.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=bcfed629-80b2-4c56-b2d3-acb600eb97a9)
    + [Fundamentals of Survey Resarch](https://aalto.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=1a568a28-4dd2-410a-9856-ad4800b46411)
    + [Introduction to IBM SPSS](https://aalto.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=08f27ca7-493c-4078-855b-acb600eb986e)
  + Discussant
    + [Assumptions of Linear Regression](https://aalto.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=10962a91-ba43-4c0f-828a-ad4800b6ade4)
    + [Research Design](https://aalto.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=0b8ad79a-e0e8-41c5-b052-ad4800b6bec3) 
  
  *Tools: IBM SPSS*
