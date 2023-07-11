//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationGreeceRuc1
Parent:   Observation 
Id:       observation-greeceRuc1-gk
Title:    "Observation Prediction of metabolic syndrome"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Prediction of metabolic syndrome (predicted Predict the waist circumference, Body Mass Index (BMI) and body fat measures), as defined for the Greece RUC 1"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	from VsPredictedVitalSigns (extensible)
* value[x] 1..1
* value[x] only Quantity

* component 0..0
* hasMember 0..0