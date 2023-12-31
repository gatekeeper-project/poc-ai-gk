Instance: GreeceRUC1Operation
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/GreeceRUC1"
* name = "MetabolicSyndromePrediction"
* title = "Greece RUC1: Prediction of metabolic syndrome"
* status = #draft
* kind = #operation
* date = "2023-07-11"
* publisher = "Gatekeeper Project"
* description = "This operation returns an early prediction of metabolic syndrome."

* code = #predictMetabolicSyndrome

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile = Canonical (ObservationEortcQolC30Input) */
* outputProfile = Canonical (ObservationGreeceRuc1) 
// ========== in paramters =====
* parameter[+].name = #input-panel
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Generic Bundle" // ==> To be refined
* parameter[=].type = #Bundle
// ========== out paramters =====
* parameter[+].name = #predicted-metabolic-syndrome
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Predicted metabolic syndrome"
* parameter[=].type = #Observation

