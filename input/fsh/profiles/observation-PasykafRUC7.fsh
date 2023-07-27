//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationPasykafRUC7
Parent:   Observation 
Id:       observation-pasykafRUC7-gk
Title:    "Observation Quality of Life Prediction"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the quality of life prediction, as defined for the Cyprus (PASYKAF) RUC 7"
//-------------------------------------------------------------------------------------------

* insert ObservationCommonRules
* code	= CsGatekeeperAi#qol-prediction
* value[x] only CodeableConcept  // ADD VOC Binding (CATEGORIES)
* component
  * code 1..1
  * value[x] ^short = "Actual result."