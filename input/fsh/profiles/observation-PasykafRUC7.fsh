//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationPasykafRUC7
Parent:   Observation 
Id:       observation-pasykafRUC7-gk
Title:    "Observation Quality of Life Prediction"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the quality of life prediction, as defined for the Cyprus (PASYKAF) RUC 7"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= CsGatekeeperAi#qol-prediction
* value[x] 1..1
* value[x] only CodeableConcept  // ADD VOC Binding (CATEGORIES)

* component 0..0 
* hasMember 0..0 
