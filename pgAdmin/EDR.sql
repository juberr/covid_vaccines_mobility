-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

CREATE TABLE "Patient_details" (
    "encounter_id" INT,   NOT NULL,
    "patient_nbr" INT,   NOT NULL,
    "race" VARCHAR,   NOT NULL,
    "gender" VARCHAR,   NOT NULL,
    "age" VARCHAR,   NOT NULL,
    "weight" VARCHAR,   NOT NULL,
    "diag_1" VARCHAR,   NOT NULL,
    "diag_2" VARCHAR,   NOT NULL,
    "diag_3" VARCHAR,   NOT NULL,
    "number_diagnoses" INT,   NOT NULL,
    "num_lab_procedures" INT,   NOT NULL,
    "num_procedures" INT,   NOT NULL,
    "num_medications" INT,   NOT NULL,
    "number_outpatient" INT,   NOT NULL,
    "number_emergency" INT,   NOT NULL,
    "number_inpatient" INT,   NOT NULL,
    "admission_type_id" INT,   NOT NULL,
    "discharge_disposition_id" INT,   NOT NULL,
    "admission_source_id" INT,   NOT NULL,
    "time_in_hospital" INT,   NOT NULL,
    "payer_code" VARCHAR,   NOT NULL,
    "medical_specialty" VARCHAR,   NOT NULL,
    CONSTRAINT "pk_Patient_details" PRIMARY KEY (
        "encounter_id"
     )
);

CREATE TABLE "Medications" (
    "encounter_id" INT,   NOT NULL,
    "max_glu_serum" VARCHAR,   NOT NULL,
    "A1Cresult" VARCHAR,   NOT NULL,
    "metformin" VARCHAR,   NOT NULL,
    "repaglinide" VARCHAR,   NOT NULL,
    "nateglinide" VARCHAR,   NOT NULL,
    "chlorpropamide" VARCHAR,   NOT NULL,
    "glimepiride" VARCHAR,   NOT NULL,
    "acetohexamide" VARCHAR,   NOT NULL,
    "glipizide" VARCHAR,   NOT NULL,
    "glyburide" VARCHAR,   NOT NULL,
    "tolbutamide" VARCHAR,   NOT NULL,
    "pioglitazone" VARCHAR,   NOT NULL,
    "rosiglitazone" VARCHAR,   NOT NULL,
    "acarbose" VARCHAR,   NOT NULL,
    "miglitol" VARCHAR,   NOT NULL,
    "troglitazone" VARCHAR,   NOT NULL,
    "tolazamide" VARCHAR,   NOT NULL,
    "examide" VARCHAR,   NOT NULL,
    "citoglipton" VARCHAR,   NOT NULL,
    "insulin" VARCHAR,   NOT NULL,
    "glyburide-metformin" VARCHAR,   NOT NULL,
    "glipizide-metformin" VARCHAR,   NOT NULL,
    "glimepiride-pioglitazone" VARCHAR,   NOT NULL,
    "metformin-rosiglitazone" VARCHAR,   NOT NULL,
    "metformin-pioglitazone" VARCHAR,   NOT NULL,
    "change" VARCHAR,   NOT NULL,
    "diabetesMed" VARCHAR,   NOT NULL,
    "readmitted" VARCHAR   NOT NULL
);

ALTER TABLE "Patient_details" ADD CONSTRAINT "fk_Patient_details_encounter_id" FOREIGN KEY("encounter_id")
REFERENCES "Medications" ("encounter_id");
