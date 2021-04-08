
function predict() {
    
    let input = { //create a JSON object with the form data
        'gender': parseInt(d3.select('#gender').node().value),
        'age': parseInt(d3.select('#age').node().value),
        'time_in_hospital': parseInt(d3.select('#timehosp').node().value),
        'num_lab_procedures': parseInt(d3.select('#labproc').node().value),
        'num_procedures': parseInt(d3.select('#numproc').node().value),
        'num_medications': parseInt(d3.select('#nummed').node().value),
        'diag_1': parseInt(d3.select('#diag1').node().value),
        'diag_2': parseInt(d3.select('#diag2').node().value),
        'diag_3': parseInt(d3.select('#diag3').node().value),
        'number_diagnoses': parseInt(d3.select('#numdiag').node().value),
        'max_glu_serum': parseInt(d3.select('#gluserum').node().value),
        'A1Cresult': parseInt(d3.select('#a1c').node().value),
        'diabetesMed': parseInt(d3.select('#diamed').node().value),
        'num_meds_changed': parseInt(d3.select('#numchange').node().value),
        'total_hosp_visits': parseInt(d3.select('#numvisit').node().value),
        'race_AfricanAmerican': (d3.select('#race').node().value == 'African American') ? 1 : 0,
        'race_Asian': (d3.select('#race').node().value == 'Asian') ? 1 : 0,
        'race_Caucasian': (d3.select('#race').node().value == 'Caucasian') ? 1 : 0,
        'race_Hispanic': (d3.select('#race').node().value == 'Hispanic') ? 1 : 0,
        'race_Other': (d3.select('#race').node().value == 'Other') ? 1 : 0,
        'admission_type_id_Elective': (d3.select("#admtype").node().value == 'Elective') ?  1 : 0,
        'admission_type_id_Emergency': (d3.select("#admtype").node().value == 'Emergency') ? 1 : 0,
        'admission_type_id_Other': (d3.select("#admtype").node().value == 'Other') ? 1 : 0,
        'discharge_disposition_id_Discharged to Home': (d3.select("#discharge").node().value == 'Discharged to Home') ? 1 : 0,
        'discharge_disposition_id_Other': (d3.select("#discharge").node().value == 'Other') ? 1 : 0,
        'admission_source_id_Emergency Room': (d3.select("#admsource").node().value == 'Emergency Room') ? 1 : 0,
        'admission_source_id_Other': (d3.select("#admsource").node().value == 'Other') ? 1 : 0,
        'admission_source_id_Referral': (d3.select("#admsource").node().value == 'Referral') ? 1: 0,

    }

    // declare endpoint
    let url = 'http://localhost:2456/predict'

    // create api params
    let params = {
        method: 'POST',
        headers: { "Content-Type": 'application/json'},
        body: JSON.stringify(input)
    }

    //locate results section
    let results = d3.select('#result')


    // get prediction and update section
    d3.text(url, params).then(resp => results.text(resp))

    

}