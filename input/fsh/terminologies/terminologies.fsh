//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsGatekeeperAi
Id: gatekeeper-ai
Title: "Gatekeeper internal Code System for AI POC"
Description: "Gatekeeper internal Code System for AI POC"
//-------------------------------------------------------------------------------------------

* ^experimental = true
* ^caseSensitive = true
* #who-adh-score	"Who Adherence Score" "Who Adherence Score"
* #who-adh-level	"Who Adherence Level" "Who Adherence Level"
* #who-adh-explainability	"Who Adherence Explainability" "Who Adherence Explainability"
* #ada-adh-score	"Ada Adherence Score" "Ada Adherence Score"
* #ada-adh-level	"Ada Adherence Level" "Ada Adherence Level"
* #ada-adh-explainability	"Ada Adherence Explainability" "Ada Adherence Explainability"
* #deficient "Deficient" "Deficient"

// -- temporary placeholders

* #EortcQolC30-panel "EORTC QOL C30 panel" "EORTC Quality of Life Questionnaire Core-30 panel"

// Aragon RUC 1 
* #frailty-risk-panel "Cluster Frailty Risk panel" "Cluster Frailty Risk panel"
* #frailty-risk-category "Cluster Frailty Risk category" "Cluster Frailty Risk category"
* #frailty-risk-distance-unit "Cluster Frailty Risk distance (unit)" "Cluster Frailty Risk distance (unit)"
* #frailty-risk-distance-perc "Cluster Frailty Risk distance (%)" "Cluster Frailty Risk distance (%)"

// Cyprus (PASYKAF) RUC 7
* #qol-prediction "QoL prediction" "Cancer patient's quality of life (QoL) prediction"

// Greece RUC 1
* #waist-circumference "Waist circumference" "Waist circumference (predicted)" 
* #body-fat "Body Fat" "Body Fat (predicted)"

* #likehood "likehood" "likehood"

* #depression-hads "depression-hads" "depression-hads"
* #anxiety-hads "anxiety-hads" "anxiety-hads"
* #ipos "ipos" "ipos"
* #PF2 "PF2 (Physical Functioning)" "PF2 (Physical Functioning"
* #RF2 "RF2 (Role Functioning)" "RF2 (Role Functioning)"
* #EF "EF (Emotional Functioning)" "EF (Emotional Functioning)"
* #CF "CF (Cognitive Functioning)" "CF (Cognitive Functioning)"
* #SF "SF (Social Functioning)" "SF (Social Functioning)"
* #FA "FA (Fatigue)" "FA (Fatigue)"
* #NV "NV (Nausea and Vomiting)" "NV (Nausea and Vomiting)"
* #PA "PA (Pain)" "PA (Pain)"
* #DY "DY (Dyspnoea)" "DY (Dyspnoea)"
* #SL "SL (Insomnia)" "SL (Insomnia)"
* #AP "AP (Appetite Loss)" "AP (Appetite Loss)"
* #CO "CO (Constipation)" "CO (Constipation)"
* #DI "DI (Diarrhoea)" "DI (Diarrhoea)"
* #FI "FI (Financial difficulties)" "FI (Financial difficulties)"
* #Distance "Distance" "Distance"
* #Steps "Steps" "Steps"
* #cal-active "Calories active" "Calories active"
* #cal-resting "Calories resting" "Calories resting"
* #SpO2 "SpO2" "SpO2"
* #heart-rate "Heart rate" "Heart rate"
* #heart-rate-samples "Heart rate samples" "Heart rate samples"
* #Minimum-heart-rate "Minimum heart rate" "Minimum heart rate"
* #Maximum-heart-rate "Maximum heart rate" "Maximum heart rate"
* #Resting-heart-rate "Resting heart rate" "Resting heart rate"
* #Average-heart-rate "Average heart rate" "Average heart rate"
* #Average-stress-level "Average stress level" "Average stress level"
* #Maximum-stress-level "Maximum stress level" "Maximum stress level"
* #Stress-duration "Stress duration" "Stress duration"
* #Rest-stress-duration "Rest stress duration" "Rest stress duration"
* #Activity-stress-duration "Activity stress duration" "Activity stress duration"
* #Low-stress-duration "Low stress duration" "Low stress duration"
* #Medium-stress-duration "Medium stress duration" "Medium stress duration"
* #High-stress-duration "High stress duration" "High stress duration"
* #Stress-qualifier "Stress qualifier" "Stress qualifier"
* #Sleep-duration "Sleep duration" "Sleep duration"
* #Deep-sleep-duration "Deep sleep duration" "Deep sleep duration"
* #Light-sleep-duration "Light sleep duration" "Light sleep duration"
* #REM-sleep-duration "REM sleep duration" "REM sleep duration"
* #Awake "Awake" "Awake"


//+++++++++++++++++++++++++++++
ValueSet: VsRiskAssessed
Id: gatekeeper-risk-assessed
Title: "Risk Assessed"
Description: "Risk Assessed"
//-----------------------------
* ^experimental = true
* $sct#414191008 // Fall risk assessment (procedure)
* $sct#225338004 // Risk assessment

//+++++++++++++++++++++++++++++
ValueSet: VsAssessedConditions
Id: gatekeeper-assessed-condition
Title: "Assessed Conditions"
Description: "Assessed Conditions"
//-----------------------------

/* heart failure, or polymedicated people  */
* ^experimental = true
* $sct#13645005 // "COPD"
* $sct#84114007 // Heart failure (disorder)
* $sct#161898004 // Falls (finding)
* $sct#408561005 // Falls caused by medication (finding)
// clarify polymedicated people
// which kind of cancer? see RUC7

//+++++++++++++++++++++++++++++
ValueSet: VsPredictedVitalSigns
Id: gatekeeper-predicted-vital
Title: "Predicted Vital Signs"
Description: "Predicted Vital Signs"
//-----------------------------
* ^experimental = true
* $loinc#59574-4	 // "Body mass index (BMI) [Percentile]"
* $loinc#39156-5	// Body mass index (BMI) [Ratio]
* CsGatekeeperAi#waist-circumference // "Waist circumference" 
* CsGatekeeperAi#body-fat // "Body Fat" 
// clarify polymedicated people
// which kind of cancer? see RUC7

//+++++++++++++++++++++++++++++
ValueSet: VsEortcQolC30
Id: gatekeeper-eortcQolC30
Title: "EORTC QOL C30  input parameters"
Description: "EORTC Quality of Life Questionnaire Core-30 (EORTC QOL C30) Input parameters"
//-----------------------------
* ^experimental = true
* CsGatekeeperAi#depression-hads "depression-hads"
* CsGatekeeperAi#anxiety-hads "anxiety-hads"
* CsGatekeeperAi#ipos "ipos"
* CsGatekeeperAi#PF2 "PF2 (Physical Functioning)"
* CsGatekeeperAi#RF2 "RF2 (Role Functioning)"
* CsGatekeeperAi#EF "EF (Emotional Functioning)"
* CsGatekeeperAi#CF "CF (Cognitive Functioning)"
* CsGatekeeperAi#SF "SF (Social Functioning)"
* CsGatekeeperAi#FA "FA (Fatigue)"
* CsGatekeeperAi#NV "NV (Nausea and Vomiting)"
* CsGatekeeperAi#PA "PA (Pain)"
* CsGatekeeperAi#DY "DY (Dyspnoea)"
* CsGatekeeperAi#SL "SL (Insomnia)"
* CsGatekeeperAi#AP "AP (Appetite Loss)"
* CsGatekeeperAi#CO "CO (Constipation)"
* CsGatekeeperAi#DI "DI (Diarrhoea)"
* CsGatekeeperAi#FI "FI (Financial difficulties)"
* CsGatekeeperAi#Distance "Distance"
* CsGatekeeperAi#Steps "Steps"
* CsGatekeeperAi#cal-active "Calories active"
* CsGatekeeperAi#cal-resting "Calories resting"
* CsGatekeeperAi#SpO2 "SpO2"
* CsGatekeeperAi#heart-rate "Heart rate"
* CsGatekeeperAi#heart-rate-samples "Heart rate samples"
* CsGatekeeperAi#Minimum-heart-rate "Minimum heart rate"
* CsGatekeeperAi#Maximum-heart-rate "Maximum heart rate"
* CsGatekeeperAi#Resting-heart-rate "Resting heart rate"
* CsGatekeeperAi#Average-heart-rate "Average heart rate"
* CsGatekeeperAi#Average-stress-level "Average stress level"
* CsGatekeeperAi#Maximum-stress-level "Maximum stress level"
* CsGatekeeperAi#Stress-duration "Stress duration"
* CsGatekeeperAi#Rest-stress-duration "Rest stress duration"
* CsGatekeeperAi#Activity-stress-duration "Activity stress duration"
* CsGatekeeperAi#Low-stress-duration "Low stress duration"
* CsGatekeeperAi#Medium-stress-duration "Medium stress duration"
* CsGatekeeperAi#High-stress-duration "High stress duration"
* CsGatekeeperAi#Stress-qualifier "Stress qualifier"
* CsGatekeeperAi#Sleep-duration "Sleep duration"
* CsGatekeeperAi#Deep-sleep-duration "Deep sleep duration"
* CsGatekeeperAi#Light-sleep-duration "Light sleep duration"
* CsGatekeeperAi#REM-sleep-duration "REM sleep duration"
* CsGatekeeperAi#Awake "Awake"