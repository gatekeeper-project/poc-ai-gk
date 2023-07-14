Instance: AragonRUC257Operation
InstanceOf: OperationDefinition
/*
CHECK DIFFERENCES ... 
*/
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/AragonRUC257"
* name = "AragonRUC257Operation"
* title = "Aragon RUC257: Prediction of exacerbations"
* status = #draft
* kind = #operation
* date = "2023-07-11"
* publisher = "Gatekeeper Project"
* description = "This operation returns provides a prediction of exacerbations(risk levels or binary) for people with COPD, or heart failure, or polymedicated people"

* code = #calculateExacerbationRisk

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile = Canonical (ObservationEortcQolC30Input) */
* outputProfile = Canonical (RiskAssessmentGK) 
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
* parameter[=].documentation = "Generic Bundle" // ==> To be refined
* parameter[=].type = #Bundle
// ========== out paramters =====
* parameter[+].name = #patient-status-index
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction of exacerbations"
* parameter[=].type = #RiskAssessment

