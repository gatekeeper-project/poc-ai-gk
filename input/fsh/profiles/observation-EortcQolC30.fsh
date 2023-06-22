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
* code	= CsGatekeeperAi#EortcQolC30Index 
* value[x] 0..1
* value[x] only Quantity
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
// unless explainability is a 'note' ..
* component 0..
* component 
  * code 1..
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
* component 1..

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationEortcQolC30Output
Parent:   ObservationEortcQolC30 
Id:       observation-eortcQolC30Index-output-gk
Title:    "Observation EORTC QOL C30 index"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the EORTC QOL C30 index"
//
* ^abstract = false
* status = #preliminary
* value[x] 0..0
* component 1..