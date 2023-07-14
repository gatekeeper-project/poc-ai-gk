//============== ALIAS ===============

//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: BundleWhoAdherence
Parent: Bundle
Id: bundle-whoadherence-gk
Title: "Bundle Who Adherence"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Who Adherence result"
* . ^short = "Bundle Who Adherence"
* . ^definition = "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Who Adherence result"
* identifier ^short = "Business identifier for this Bundle"
* type = #collection
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains total-score 1..1
* entry[total-score].resource only ObservationWhoAdherenceTotal

* entry contains age 1..1
* entry[age].resource only ObservationWhoAdherenceAge

* entry contains score 1..*
* entry[score].resource only ObservationWhoAdherenceDetail

* entry contains plan 1..*
* entry[plan].resource only CarePlanWhoAdherence


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWhoAdherenceTotal
Parent:   Observation 
Id:       observation-whoadherence-total-gk
Title:    "Observation Who Adherence Total Score"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Who Adherence total score"
//-------------------------------------------------------------------------------------------

* extension contains $workflow-supportingInfo named supportingInfo 1..1 //change into 1..
* extension[supportingInfo].valueReference only Reference(Observation)
* extension[supportingInfo].valueReference 1..1

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= CsGatekeeperAi#who-adh-score
* effectivePeriod 1..1
* subject 1..
// * derivedFrom 1..
* value[x] 1..1
* valueQuantity 1..
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWhoAdherenceAge
Parent:   Observation 
Id:       observation-whoadherence-age-gk
Title:    "Observation Who Adherence Subject Age"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Who Adherence Subect Age"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= $loinc#30525-0
* effectivePeriod 1..1
* subject 1..
// * derivedFrom 1..
* value[x] 1..1
* valueQuantity 1..
* valueQuantity.unit = "years"
* valueQuantity.system = $ucum
* valueQuantity.code = #a

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWhoAdherenceDetail
Parent:   Observation 
Id:       observation-whoadherence-detail-gk
Title:    "Observation Who Adherence Deatailed Score"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the Who Adherence Score details"
//-------------------------------------------------------------------------------------------

* status 1..1	 // code	registered | preliminary | final | amended +
* code	1..1
* code	= CsGatekeeperAi#who-adh-score
* effective[x] 1..1
* effective[x] only Period or Timing
* effectiveTiming
  * event  0..0
  * repeat  0..0
  * code 1..
* subject 1..
* interpretation 1..
// * derivedFrom 1..
* value[x] 1..1
* valueQuantity 1..
* valueQuantity.unit = "%"
* valueQuantity.system = $ucum
* valueQuantity.code = #%
// unless explainability is a 'note' ..
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false   // can be omitted, since false is the default
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains explainability 1..*
* component[explainability]
  * code = CsGatekeeperAi#who-adh-explainability
  * value[x] 1.. 
  * value[x] only string



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanWhoAdherence
Parent:   CarePlan 
Id:       careplan-whoadherence-gk
Title:    "Recommendations List"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the List of Recommendations derived from the Who Adherence Score"
//-------------------------------------------------------------------------------------------
* intent = #proposal
* activity 1..
  * detail 1..
    * reasonReference 1..
    * reasonReference only Reference(ObservationWhoAdherenceDetail)
    * code.text 1..