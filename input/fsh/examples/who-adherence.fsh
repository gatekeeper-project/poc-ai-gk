//===============================
//    RULES SET
//===============================


RuleSet: subject-identifier
* subject.identifier
  * system = $uri
  * value = "user20@puglia.gatekeeper.com"


RuleSet: careplan-common-rules
* intent = #proposal
* status = #unknown
* insert subject-identifier

//===============================
//    INSTANCES
//===============================

Instance: Bundle-wbc
InstanceOf: BundleWhoAdherence
Title: "Bundle Who Adherence Score"
Description: "Bundle Who Adherence Score"
Usage: #example
* identifier.system = $uri
* identifier.value = "urn:uuid:3a509529-686f-4e5e-8fa1-f73a99b24e97"
* type = #collection
* timestamp = "2023-06-08T00:00:00Z"

* entry[+].fullUrl = "urn:uuid:277d4e6d-b3b5-4bec-8236-3e84141e4c2e"
* entry[=].resource = Observation-wbc-total

* entry[+].fullUrl = "urn:uuid:0c8b6ca3-db57-48d5-9166-71474156fba7"
* entry[=].resource = Observation-age

* entry[+].fullUrl = "urn:uuid:d6534b29-830c-47b5-8185-072ecc567159"
* entry[=].resource = Observation-wbc-detail-0
* entry[+].fullUrl = "urn:uuid:19ee079b-fed5-4c97-89d4-ac3a7bf44e54"
* entry[=].resource = Observation-wbc-detail-1
* entry[+].fullUrl = "urn:uuid:4f5d4baf-71da-4dc8-a5d6-4a24f0050e34"
* entry[=].resource = Observation-wbc-detail-4

* entry[+].fullUrl = "urn:uuid:a2fcad41-09c7-4140-bdfd-a76ba44f140a"
* entry[=].resource = CarePlan-0
* entry[+].fullUrl = "urn:uuid:c69e4ab8-46ab-4200-97c0-300eee93e2ae"
* entry[=].resource = CarePlan-1
* entry[+].fullUrl = "urn:uuid:37d6d884-4b97-46f7-af79-6be01af562c2"
* entry[=].resource = CarePlan-4

//****************************************************************/
//****************************************************************/

Instance: Observation-wbc-total
InstanceOf: ObservationWhoAdherenceTotal
// Usage: #inline
* id = "277d4e6d-b3b5-4bec-8236-3e84141e4c2e"
* extension[supportingInfo].valueReference = Reference (Observation-age)
* status = #final
// * category[+] = $observation-category#laboratory
* code = CsGatekeeperAi#who-adh-score "Who Adherence Score"
* insert subject-identifier
* effectivePeriod.start = "2021-07-01"
* effectivePeriod.end = "2021-07-30"
* derivedFrom[+] = Reference(Observation-wbc-detail-0)
* derivedFrom[+] = Reference(Observation-wbc-detail-1)
* derivedFrom[+] = Reference(Observation-wbc-detail-4)
// * performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity = 22.249857467415143 '%' "%"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: Observation-age
InstanceOf: ObservationWhoAdherenceAge
// Usage: #inline
* id = "0c8b6ca3-db57-48d5-9166-71474156fba7"
* status = #final
* insert subject-identifier
* code = $loinc#30525-0 "Age"
* effectivePeriod.start = "2021-07-01"
* effectivePeriod.end = "2021-07-30"


// * performer[+].display = "MUDr. Aleš Procházka"
* valueQuantity = 56 'a' "years"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: Observation-wbc-detail-0
InstanceOf: ObservationWhoAdherenceDetail
// Usage: #inline
* id = "d6534b29-830c-47b5-8185-072ecc567159"
* status = #final
// * category[+] = $observation-category#laboratory
* code = CsGatekeeperAi#who-adh-score "Who Adherence Score"
* insert subject-identifier
* effectiveTiming.code.text = "Week 0"
* interpretation = $v3-ObservationInterpretation#L "Low"
* valueQuantity = 22.249857467415143 '%' "%"
* component[explainability]
  * code = CsGatekeeperAi#who-adh-explainability
  * valueString = "User does not perform any muscle strengthening activities"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: Observation-wbc-detail-1
InstanceOf: ObservationWhoAdherenceDetail
// Usage: #inline
* id = "19ee079b-fed5-4c97-89d4-ac3a7bf44e54"
* status = #final
// * category[+] = $observation-category#laboratory
* code = CsGatekeeperAi#who-adh-score "Who Adherence Score"
* insert subject-identifier
* effectivePeriod
  * start = "2021-07-08"
  * end = "2021-07-14"
* interpretation = $v3-ObservationInterpretation#L "Low"
* valueQuantity = 26.428456392597973 '%' "%"
* component[explainability]
  * code = CsGatekeeperAi#who-adh-explainability
  * valueString = "User performs muscle strengthening activities less than twice a week and with less than moderate intensity"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: Observation-wbc-detail-4
InstanceOf: ObservationWhoAdherenceDetail
// Usage: #inline
* id = "4f5d4baf-71da-4dc8-a5d6-4a24f0050e34"
* status = #final
// * category[+] = $observation-category#laboratory
* code = CsGatekeeperAi#who-adh-score "Who Adherence Score"
* insert subject-identifier
* effectivePeriod
  * start = "2021-07-24"
  * end = "2021-07-30"
* interpretation = CsGatekeeperAi#deficient "Deficient"
* valueQuantity = 6.584199141252464 '%' "%"
* component[explainability][+]
  * code = CsGatekeeperAi#who-adh-explainability
  * valueString = "User performs aerobic activity under 75 minutes in a week with less than moderate intensity"
* component[explainability][+]
  * code = CsGatekeeperAi#who-adh-explainability
  * valueString = "User does not perform any muscle strengthening activities"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: CarePlan-0
InstanceOf: CarePlanWhoAdherence
Title:    "Recommendations List (0)"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the List of Recommendations derived from the Who Adherence Score"
//-------------------------------------------------------------------------------------------

* id = "a2fcad41-09c7-4140-bdfd-a76ba44f140a"
* insert careplan-common-rules
* activity[+] 
  * detail
    * status = #unknown 
    * code.text  = "User should perform muscle strengthening activities over 2 times a week with minimum of moderate intensity"
    * reasonReference = Reference(Observation-wbc-detail-0)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: CarePlan-1
InstanceOf: CarePlanWhoAdherence
Title:    "Recommendations List (1)"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the List of Recommendations derived from the Who Adherence Score"
//-------------------------------------------------------------------------------------------
* id = "c69e4ab8-46ab-4200-97c0-300eee93e2ae"
* insert careplan-common-rules
* activity[+] 
  * detail
    * status = #unknown 
    * code.text  = "User should perform muscle strengthening activities over 2 times a week with minimum of moderate intensity"
    * reasonReference = Reference(Observation-wbc-detail-1)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: CarePlan-4
InstanceOf: CarePlanWhoAdherence
Title:    "Recommendations List (2)"
Description: "This profile defines how to represent with HL7 FHIR, for the scope of the Gatekeeper project, the List of Recommendations derived from the Who Adherence Score"
//-------------------------------------------------------------------------------------------
* id = "37d6d884-4b97-46f7-af79-6be01af562c2"
* insert careplan-common-rules
* activity[+] 
  * detail
    * status = #unknown 
    * code.text  = "User should perform aerobic activity over 75 minutes in a week with minimum of moderate intensity"
    * reasonReference = Reference(Observation-wbc-detail-4)
* activity[+] 
  * detail
    * status = #unknown 
    * code.text  = "User should perform muscle strengthening activities over 2 times a week with minimum of moderate intensity"
    * reasonReference = Reference(Observation-wbc-detail-4)
                                   