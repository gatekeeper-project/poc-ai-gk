Instance: GreeceRUC3Operation
InstanceOf: OperationDefinition
/*

*/
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/GreeceRUC3"
* name = "GreeceRUC3Operation"
* title = "Greece RUC3: Predicted Hypoglycaemia"
* status = #draft
* kind = #operation
* date = "2023-07-11"
* publisher = "Gatekeeper Project"
* description = "This operation returns a short-term prediction of hypoglycaemia, defined considering the interstitial or capillary blood compartment of glucose measurement."

* code = #predictHypoglycaemia

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile = Canonical (ObservationEortcQolC30Input) */
* outputProfile = Canonical (ObservationGreeceRuc1) 
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
* parameter[+].name = #predicted-hypoglycaemia
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Predicted Hypoglycaemia"
* parameter[=].type = #Observation

