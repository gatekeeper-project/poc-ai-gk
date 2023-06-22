//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationEortcQolC30
Parent:   Observation 
Id:       observation-eortcQolC30Index-gk
Title:    "Observation EORTC QOL C30 panel"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the EORTC QOL C30 panel"
//-------------------------------------------------------------------------------------------

* ^abstract = true
* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= CsGatekeeperAi#EortcQolC30-panel 
* value[x] 0..1
* value[x] only CodeableConcept

// unless explainability is a 'note' ..

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false   // can be omitted, since false is the default
* component ^slicing.description = "Slice based on the component.code pattern"
  * code 1..

* component contains likehood 0..1
* component[likehood]
  * code = CsGatekeeperAi#likehood
  * valueQuantity 1..
  * valueQuantity.unit = "%"
  * valueQuantity.system = $ucum
  * valueQuantity.code = #%

* component contains input-parameters 0..*
* component[input-parameters]
  * code from VsEortcQolC30 (required) 
  * value[x] 1..

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationEortcQolC30Input
Parent:   ObservationEortcQolC30 
Id:       observation-eortcQolC30Index-input-gk
Title:    "Observation EORTC QOL C30 input panel"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the EORTC QOL C30 input panel"
//
* ^abstract = false
* status = #preliminary
* value[x] 0..0
* component[likehood] 0..0
* component[input-parameters] 1..

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationEortcQolC30Output
Parent:   ObservationEortcQolC30 
Id:       observation-eortcQolC30Index-output-gk
Title:    "Observation EORTC QOL C30 index"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the EORTC QOL C30 index"
//
* ^abstract = false
* status = #final
* value[x] 1..1
* component[likehood] 1..1
* component[input-parameters] 0..