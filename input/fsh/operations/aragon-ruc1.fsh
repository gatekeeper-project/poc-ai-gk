RuleSet: ClusterFrailtyRiskRulesSet
* status = #draft
* kind = #operation
* date = "2023-07-11"
* publisher = "Gatekeeper Project"
* code = #clusterFrailtyRisk
* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
/* * inputProfile = Canonical (ObservationEortcQolC30Input) */
* outputProfile = Canonical (ObservationAragonRuc1) 

// ========== out paramters =====
* parameter[+].name = #cluster-frailty-risk
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Cluster Frailty Risk"
* parameter[=].type = #Observation




Instance: ClusterFrailtyRiskPatient
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/AragonRUC1"
* insert ClusterFrailtyRiskRulesSet
* name = "ClusterFrailtyRisk"
* title = "RUC1: Cluster Frailty Risk (Patient/ID)"
* description = "This operation returns a data-driven classification to profile the risk of an aging population knowing the Patient ID."
* resource = #Patient
* system = false
* type = false
* instance = true

// ======================================================
// ======================================================
// ======================================================

Instance: ClusterFrailtyRisk
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/AragonRUC1"
* insert ClusterFrailtyRiskRulesSet
* name = "ClusterFrailtyRisk"
* title = "RUC1: Cluster Frailty Risk (Bundle)"
* description = "This operation returns a data-driven classification to profile the risk of an aging population by providing with a Bundle the requested information."
* system = true
* type = false
* instance = false
// ========== in paramters =====
* parameter[+].name = #input-panel
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Generic Bundle" // ==> To be refined
* parameter[=].type = #Bundle

