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

  - Softwares: Python, Jupyter Notebook, Pandas, SK-Learn, Postgres database, Quick DBD, Flask, Chartjs, Bootstrap,


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
(4) Generate visualizations on a dashboard that provide insights and trends from the data   


**Work Cited:** Beata Strack, Jonathan P. DeShazo, Chris Gennings, Juan L. Olmo, Sebastian Ventura, Krzysztof J. Cios, and John N. Clore, _“Impact of HbA1c Measurement on Hospital Readmission Rates: Analysis of 70,000 Clinical Database Patient Records,”_ BioMed Research International, vol. 2014, Article ID 781670, 11 pages, 2014.
Source: http://archive.ics.uci.edu/ml/datasets/Diabetes+130-US+hospitals+for+years+1999-2008




**Data Exploration & Engineering**

The diabetes dataset used for this project had over 50 features & 101k rows of data. This dataset was subjected to various data exploration, preprocessing and engineering processes and were eventually reduced to about 29 features & 59k rows of data. These exploration & engineering steps include;

1. **General Preprocessing:** This step generally involved the dropping of some initially identified unimportant features and rows from the dataset. Duplicates in the "patient_nbr" feature column were first dropped following which the "patient_nbr", "enounter_id", "weight", "payer_code" & "medical_spacialty". Following this, rows in the "gender" & "race" columns with unknown values like "?" and "unknown/invalid" were dropped. In the "discharge_disposition_id" column, rows that correspond to patients who are still in the hospital or dead / expired patients were also dropped.

2. **Binning Diagnosis:** This step was dedicated to the fine-tunning of the "diag_1", "diag_2" & "diag_3" feature columns. The data in these columns were first converted from objects to floats following which the data were then binned (reassigned numbers between 1 and 17 depending on the bands the data fall into). The bands correspond to code ranges described by ICD9 (http://icd9.chrisendres.com/index.php?action=contents)

3. **Track Number of Medication Changed:** This step was dedicated to the preprocessing of the 23 medication columns (from "metformin" to "metformin-pioglitazone") in the data. The aim of this step was to identify if there were changes in the medication of the patients and bin the data into either of 2 categories - 0 or 1 where 0 depicts "Steady / No" change in patients medications while 1 depicts "Changes" in patients medication". This was done in pursuit of dimensionality reduction to collapse 23 columns of data into one

4. **Track Number of Visits in Previous Year:** The step was used to drop "number_emergency", "number_inpatient" and "number_outpatient" feature columns and in return added the total number of hospital visits in the previous year 

5. **Encoding Some Features:** In this step, the following feature columns were encoded in readiness for the machine learning step of the projects - "gender", "age", "A1Cresult", "diabetesMed" & "max_glu_serum" columns. In addition, the target column ("readmitted") was converted to binary data (from the initial 3 unique datapoints that were present) and binned. The datapoints that represent "<30" and ">30" were binned into a single category (1) while "NO" was binned as 0.

6. **Binning Admission Source & Admission Type IDs:** These steps were used to appropriately bin the "admission_source_id" & "admission_type_id" feature columns in readiness for the next step.

7. **Turning Other Categorical Variables to Dummy Variables:** This was the final step of the data exploration / engineering phase where all outstanding categorical feature columns were modified using the "pd.get_dummies" method.  

### Presentation 

Our presentation can be viewed in the following link: 

https://docs.google.com/presentation/d/1inrKjgXdDXHLZa38YI92QWBNn2D-uiTJqdJlgmVNad0/edit?usp=sharing

### Dashboard

Our dashboard presents 4 key visualizations from our machine learning model and exploratory data analysis.

![interactive](https://github.com/juberr/readmission_diabetes_prediction/blob/develop/pics/inter.png?raw=true)

Our interactive element takes in patient feature data from the user and returns the percentage chance of that patient being readmitted.

![bubble](https://github.com/juberr/readmission_diabetes_prediction/blob/develop/pics/bubble.png?raw=true)

The bubble chart demonstrates each diagnostic groups's readmission rate in percentage. Understanding the rate at which diagnostic groups are readmitted can help doctors know which groups are of pressing concern.

![agefeat](https://github.com/juberr/readmission_diabetes_prediction/blob/develop/pics/age%20and%20feature.png?raw=true)

An age distribution chart shows the skwew in our data's population towards older age groups. This is important in understanding the limitations/biases in our dataset

The feature importance chart lists the top six features our model evaluates in ascending order. These are the six features our sample model evaluates on the dashboard.
