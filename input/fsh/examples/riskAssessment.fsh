Instance: riskCalculationExample
InstanceOf: RiskAssessmentGK
Usage: #example

* status = #final
* code = $sct#225338004 "Risk assessment" 
/* * subject = Reference(Patient/pat-1) */
* subject.identifier
  * system = $puglia-pat-id
  * value = "user20@puglia.gatekeeper.com"
* reasonCode = $sct#13645005 "COPD - Chronic obstructive pulmonary disease"
* occurrenceDateTime = 2021-06-22
* basis = 	Reference(Observation/bloodPressure)
* prediction.probabilityDecimal	= 0.15
* note.text = "This is just a note"

Instance: bloodPressure
InstanceOf: Observation
Usage: #example
* contained[0] = dev-2
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
/* * subject = Reference(Patient/pat-1) */
* subject.identifier
  * system = $puglia-pat-id
  * value = "user20@puglia.gatekeeper.com"
* subject.display = "Alexander Heig"
* effectiveDateTime = "2021-01-12T11:17:48.000088Z"
* device.reference = "#dev-2"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 103 'mm[Hg]'
* component[0].valueQuantity.unit = "mm[Hg]"
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 74 'mm[Hg]'
* component[1].valueQuantity.unit = "mm[Hg]"

Instance: dev-2
InstanceOf: Device
Usage: #inline
* identifier[0].system = "http://goodcare.org/devices/id"
* identifier[0].value = "987654"