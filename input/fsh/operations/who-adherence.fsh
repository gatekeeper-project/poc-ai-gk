Instance: WhoAdherenceScoreOperation
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gk-poc-ai/OperationDefinition/GenericRiskCalculation"
* name = "WhoAdherenceScoreOperation"
* title = "Who Adherence Score Calculation"
* status = #draft
* kind = #operation
* date = "2023-06-15"
* publisher = "Gatekeeper Project"
// * contact.name = "System Administrator"
// * contact.telecom.system = #email
// * contact.telecom.value = "beep@coyote.acme.com"
* description = "Example of OperationDefinition (Who Adherence Score operation)"
// * useContext.code = $codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = $v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #whoAdherenceScore

* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Observation"
* inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Condition" */
* outputProfile = Canonical (BundleWhoAdherence)
// ========== in paramters =====
* parameter[0].name = #observation
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Input Bundle"
* parameter[=].type = #Bundle
// ========== out paramters =====
* parameter[+].name = #adherenceScore
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Who Adherence Calculation Result"
* parameter[=].type = #Bundle

