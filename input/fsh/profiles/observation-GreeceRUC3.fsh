//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationGreeceRuc3
Parent:   Observation 
Id:       observation-greeceRuc3-gk
Title:    "Observation Hypoglycaemia predictive modelling"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Interstitial glucose concentration (mg/dL) over the next PH (prediction horizon) min. PH equals to 15 min, 30 min, or 60 min., as defined for the Greece RUC 3"
//-------------------------------------------------------------------------------------------

* insert ObservationCommonRules
* code = $loinc#99504-3 "Glucose [Mass/volume] in Interstitial fluid"
* value[x] only Quantity
* effectiveTiming 1..
* effectiveTiming.event 1..
* effectiveTiming.repeat.offset 1..
* referenceRange ^short = "Reference range"
* component 0..0