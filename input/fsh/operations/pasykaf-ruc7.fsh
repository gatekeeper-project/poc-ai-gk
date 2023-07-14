Instance: PasykafRuc7Operation
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/PasykafRuc7"
* name = "PasykafRuc7Operation"
* title = "Pasykaf RUC 7: quality of life prediction"
* status = #draft
* kind = #operation
* date = "2023-07-11"
* publisher = "Gatekeeper Project"
* description = "This operation returns a prediction of cancer patient's quality of life (QoL), which will serve as a preventive measure utilized by clinicians to guide their interventions."

* code = #clusterFrailtyRisk

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile = Canonical (ObservationEortcQolC30Input) */
* outputProfile = Canonical (ObservationAragonRuc1) 
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
* parameter[=].documentation = "Cluster Frailty Risk"
* parameter[=].type = #Observation

