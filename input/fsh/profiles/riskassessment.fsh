//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  RiskAssessmentGK
Parent:   RiskAssessment
Id:       riskAssessment-gk
Title:    "RiskAssessment (Gatekeeper)"
Description: "This profile defines how to represent a PREDICTION OF EXACERBATIONS FOR PEOPLE WITH COPD, HEART FAILURE OR POLYMEDICATED PEOPLE by using FHIR RiskAssessment for supporting the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* status MS
* code 1.. MS // type of code
* subject MS
* occurrence[x] only dateTime
* occurrenceDateTime 1.. MS
* basis MS
* prediction.probability[x] 1.. MS
* note MS