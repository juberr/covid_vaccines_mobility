# Readmission_Diabetes_Prediction

To design a suitable Machine Learning Model that can help to analyze various clinical factors in hospitalized patients with diabetes in order to predict the likelihood of re-admission of such patients for their condition at a later date.


### Overview of the Readmission_Diabetes_Prediction

The reason / purpose of this analysis is to design a suitable Machine Learning Model that can help to analyze various clinical factors in hospitalized patients with diabetes in order to predict the likelihood of re-admission of such patients for their condition at a later date. The predictive model will leverage and analyze various input factors extracted from a 10 year (1999-2008) clinical care dataset from 130 hospitals & integrated delivery networks.

Specifically, this part of the project work invoved;

  1. Creating a provisional database that will hold the dataset
  2. Preprocessing of the dataset for the Machine Learning Model
  3. Compiling, Training, Evaluating & Optimizing the Predictive Model

To generate this analysis, the following resources were utilized;

  - Data Source: http://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008

  - Softwares: Python, Jupyter Notebook, Pandas, SK Learning, Postgres databse using AWS RDS


### Description of the Source Data

The dataset represents 10 years (1999-2008) of clinical care at 130 US hospitals and integrated delivery networks. It includes over 50 features representing patient and hospital outcomes. 

Information was extracted from the database for encounters that satisfied the following criteria;
(1) It is an inpatient encounter (a hospital admission).
(2) It is a diabetic encounter, that is, one during which any kind of diabetes was entered to the system as a diagnosis.
(3) The length of stay was at least 1 day and at most 14 days.
(4) Laboratory tests were performed during the encounter.
(5) Medications were administered during the encounter.

The data contains attributes such as patient number, race, gender, age, admission type, time in hospital, medical specialty of admitting physician, number of lab test performed, HbA1c test result, diagnosis, number of medication, diabetic medications, number of outpatient, inpatient, and emergency visits in the year before the hospitalization, etc.

With this data, we hope to answer the following questions;
(1) The likelihood of re-admitting a patient for the same condition at a later date 
(2) Identify key attributes (features) from the dataset that contribute significantly to the likelihood of patient re-admission 
(3) Design & Identify the predictive model that will return the best accuracy & recall for this dataset
(4) Generate visualizations that provide insights and trends from the data   


**Work Cited:** Beata Strack, Jonathan P. DeShazo, Chris Gennings, Juan L. Olmo, Sebastian Ventura, Krzysztof J. Cios, and John N. Clore, _“Impact of HbA1c Measurement on Hospital Readmission Rates: Analysis of 70,000 Clinical Database Patient Records,”_ BioMed Research International, vol. 2014, Article ID 781670, 11 pages, 2014.
Source: http://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008


### Communication Protocol

The communication protocols adopted for this project were mainly;
1. Slack: For communication of ideas, information and other relevant data for the project
2. Zoom: For face-to-face meetings among project team members where issues relating to the project are deliberated and solutions identified and agreed.