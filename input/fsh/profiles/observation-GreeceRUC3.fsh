//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationGreeceRuc3
Parent:   Observation 
Id:       observation-greeceRuc3-gk
Title:    "Observation Prediction of metabolic syndrome"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Interstitial glucose concentration (mg/dL) over the next PH (prediction horizon) min. PH equals to 15 min, 30 min, or 60 min., as defined for the Greece RUC 3"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code = $loinc#99504-3 "Glucose [Mass/volume] in Interstitial fluid"
* value[x] 1..1
* value[x] only Quantity
* effectiveTiming 1..
* effectiveTiming.event 1..
* effectiveTiming.repeat.offset 1.. 
* component 0..0
* hasMember 0..0