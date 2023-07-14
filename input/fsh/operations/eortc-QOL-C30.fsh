Instance: EortcQolC30Operation
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/EortcQolC30"
* name = "EortcQolC30Operation"
* title = "EORTC QOL C30 index"
* status = #draft
* kind = #operation
* date = "2023-06-22"
* publisher = "Gatekeeper Project"
* description = "This operation returns the index of a patient's status and disease worsening based on the EORTC Quality of Life Questionnaire Core-30 (EORTC QOL C30)"

* code = #calculateEortPatientStatus

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
* inputProfile = Canonical (ObservationEortcQolC30Input)
* outputProfile = Canonical (ObservationEortcQolC30Output)
// ========== in paramters =====
/* * parameter[0].name = #bundle
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Input Bundle"
* parameter[=].type = #Bundle
 */
* parameter[+].name = #input-panel
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "EORTC QOL C30 input parameters"
* parameter[=].type = #Observation
// ========== out paramters =====
* parameter[+].name = #patient-status-index
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "EORTC QOL C30 patient status"
* parameter[=].type = #Observation

