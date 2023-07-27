RuleSet: ObservationCommonRules

* status 1..1
* status ^short = "observation status" // code	registered | preliminary | final | amended +
* code	1..1
* value[x] 1..1
* hasMember 0..0
* interpretation ^short = "A categorical assessment of the value"
* subject only Reference (Patient)
* method ^short = "mechanism used to perform the observation."
