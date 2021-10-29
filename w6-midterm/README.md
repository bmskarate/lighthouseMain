# Mid-Term Project
Lou R and Nik M

## Welcome to our flight predictor project!!!

![Title Image](https://www.freepnglogos.com/uploads/plane-png/plane-png-flights-airlines-msp-airport-1.png)

The goal of this project is to predict delays of flights in the first week of January, 2020  

This repository contains following main files:

- **exploratory_analysis.ipynb**: this file contains 10 questions we need to answer during the data exploration phase. They will help us to understand the data and become familiar with different variables.  

- **modeling.ipynb**: this file contains instructions for modeling part of the project. We recommend to split modeling tasks into more notebooks.  

- **data_description.md**: if you are looking for any information regarding specific attributes in the data this is the file to look in.  

- **lou_nik_submission.csv**: this file is our final submission for January Flight Predictions in csv format.

- **flight_test_clean_final.ipynb**: engineering the submission data before running it against our saved final model.


## [Predictions final CSV (broken link add final_predictions.csv later)](final_predictions.csv)

### ___________ Exploratory Analysis ____________

[**Main EDA**](https://github.com/bmskarate/LH_midterm_project/blob/main/exploratory_analysis.ipynb)  
[**Side Findings**](https://github.com/bmskarate/LH_midterm_project/blob/main/Exploratory_plotting.ipynb)  
  

### ___________ Data Engineering Notebooks ____________
  
[**Flights Cleaning**](https://github.com/bmskarate/LH_midterm_project/blob/main/flights_cleaning.ipynb)   
[**Flight Test Cleaning**](https://github.com/bmskarate/LH_midterm_project/blob/main/Flight_test_clean_final.ipynb)  
[**ML Modelling**](https://github.com/bmskarate/LH_midterm_project/blob/main/ML_play_around.ipynb)
  

### ___________ Modelling ____________

[**Modelling Main**](https://github.com/bmskarate/LH_midterm_project/blob/main/modeling.ipynb)  
[**Final Submission**](https://github.com/bmskarate/LH_midterm_project/blob/main/lou_nik_submission.csv)  
  

### System requirements
**Operating system** : Mac OS: Big Sur
**Programming Language** : Python 3.7.6
**Environment Installations** : Jupyter Notebook, Scikitlearn, Scipy, Pandas, Numpy, matplotlib

Warning: Large Datasets
**Minimum 8GB ram to run the parsed multiclassification files.**

### Data

Air Travel industry data from 2018 January to 2019 December.

Table #1 : flights
details - full dataset containing flight details, in/out, with detailed delay and arrival information
Table #2 : fuel_consumption
details - information regarding fuel load and consumptions for flights in Table #1
Table #3 : passengers
details - passenger loads and totals on different routes, aggregated monthly
Table #4 : flights_test
details - departure and arrival information for January 2020. This is our test dataset


