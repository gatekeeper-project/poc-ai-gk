// -------------------------------------------------------------------------------				
//  Logical Model				lab-author.fsh
// -------------------------------------------------------------------------------				

Logical: WhoAdherenceTotal
Id: adherence-who-total
Title: "Who Adherence: Total Result"				
Description:  """Who Adherence: Total Result"""
* patientAge 1..1 integer "Patient Age" "Patient Age"  //: 56,
* totalWhoAdherence 1..1 SimpleQuantity "WHO Adherence total score" "WHO Adherence score" //: 22.249857467415143, SimpleQuantity
* executionDate  1..1 date "Execution Date" "Execution Date" //: "08-06-2023",
* timeWindow 1..1 period "Time Window" "Time Window – it indicates the time window for which WHO Adherence concerns" //: "[20210701,20210730]",
* userID 1..1 Identifier "User ID" "User ID (her considiered an id for the subject)" // "user20@puglia.gatekeeper.com"
* weeklyDetails 1..* BackboneElement "WHO Adherence details" "WHO Adherence score" 
  * level 1..1 CodeableConcept "Level" "WHO Adherence Level" // "Low"
  * score 1..1 SimpleQuantity "Score" "WHO Adherence score" // "23.93428657787642"
  * explainability 1..* string "Explainability" "Explainability"  // "User does not perform any muscle strengthening activities"
  * recommendation 1..* string "Recommendations" "Recommendations List" // "User should perform muscle strengthening activities over 2 times a week with minimum of moderate intensity"


// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: WhoAdherence2Fhir				
Id: who-adherence-fhir				
Title: "Who Adherence Score model to this Guide Map"				
Source: WhoAdherenceTotal				
Target: "hl7.org/fhir/r4"				
				
* -> "Bundle.conformsTo(BundleWhoAdherence)"
* patientAge -> "Observation.conformsTo(ObservationWhoAdherenceAge).valueQuantity"
* totalWhoAdherence -> "Observation.conformsTo(ObservationWhoAdherenceTotal).valueQuantity"
* executionDate  -> "Bundle.conformsTo(BundleWhoAdherence).timeStamp"
* timeWindow -> "Observation.conformsTo(ObservationWhoAdherenceTotal).effectivePeriod"
* userID -> "Observation.conformsTo(ObservationWhoAdherenceTotal).subject.identifer.value"
* weeklyDetails -> "Observation.conformsTo(ObservationWhoAdherenceDetail)"
  * level -> "Observation.conformsTo(ObservationWhoAdherenceDetail).interpretation"
  * score -> "Observation.conformsTo(ObservationWhoAdherenceDetail).valueQuantity"
  * explainability -> "Observation.conformsTo(ObservationWhoAdherenceDetail).component[explainability].valueString"
  * recommendation -> "CarePlan.conformsTo(CarePlanWhoAdherence).activity.detail.code.text"
