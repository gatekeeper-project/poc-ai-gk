Instance: AdaAdherenceScore
InstanceOf: OperationDefinition
Usage: #definition
// * url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/AdaAdherenceScore"
* name = "AdaAdherenceScoreOperation"
* title = "Ada Adherence Score Calculation"
* status = #draft
* kind = #operation
* date = "2023-06-15"
* publisher = "Gatekeeper Project"
* description = "This operation returns the Ada Adherence Score, including associated weeekly details and reccomandations."

* code = #adaAdherenceScore

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Observation"
* inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Condition" */
* outputProfile = Canonical (BundleAdaAdherence)
// ========== in paramters =====
* parameter[+].name = #patient-id
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient ID"
* parameter[=].type = #Identifier

* parameter[+].name = #period
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Period to be assessed"
* parameter[=].type = #Period

// ========== out paramters =====
* parameter[+].name = #adaAdherenceScore
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Ada Adherence Result"
* parameter[=].type = #Bundle

