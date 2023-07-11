//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  RiskAssessmentGK
Parent:   RiskAssessment
Id:       riskAssessment-gk
Title:    "RiskAssessment (Gatekeeper)"
Description: "This profile defines how to represent a PREDICTION OF EXACERBATIONS FOR PEOPLE WITH COPD, HEART FAILURE OR POLYMEDICATED PEOPLE by using FHIR RiskAssessment for supporting the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* status MS
* code 1.. // type of code
* subject 1..
* reasonCode 1.. // add binding
* reasonCode from VsAssessedConditions (extensible)
* occurrence[x] only dateTime
* occurrenceDateTime 1.. MS
* basis MS
* prediction.outcome ^short = "Potential outcomes for the patient"
* prediction.probability[x] 1..
* note MS