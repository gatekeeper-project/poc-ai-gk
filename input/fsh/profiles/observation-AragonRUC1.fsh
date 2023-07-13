//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationAragonRuc1
Parent:   Observation 
Id:       observation-aragonRuc1-gk
Title:    "Observation Cluster Frailty Risk"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Cluster Frailty Risk, as defined for the Aragon RUC 1"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= CsGatekeeperAi#frailty-risk-panel 
/* * value[x] 0..1
* value[x] only CodeableConcept   */

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false   // can be omitted, since false is the default
* component ^slicing.description = "Slice based on the component.code pattern"
  * code 1..

* component contains category 0..1
* component[category]
  * code = CsGatekeeperAi#frailty-risk-category
  * valueCodeableConcept 1.. // ==> ADD BINDING

* component contains distance-unit 0..1
* component[distance-unit]
  * code = CsGatekeeperAi#frailty-risk-distance-unit
  * valueQuantity 1..
  // * valueQuantity.unit = "%" // ==> ADD VALUE
  * valueQuantity.system = $ucum
  * valueQuantity.code = #1

* component contains distance-perc 0..1
* component[distance-perc]
  * code = CsGatekeeperAi#frailty-risk-distance-perc
  * valueQuantity 1..
  * valueQuantity.unit = "%"
  * valueQuantity.system = $ucum
  * valueQuantity.code = #%