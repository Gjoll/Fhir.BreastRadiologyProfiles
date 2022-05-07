Profile: RecommendationsSectionFragment
Parent: Composition
Title: "Composition Recommendations Section Fragment"
Description: """
  Adds Recommendations Section to Composition
  """
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^slicing.description = "Composition Section slicing"
* section contains recommendations 0..1 MS
* section[recommendations] ^definition = """
	   This section contains references to recommended actions 
	aken in response to the observations and findings of this report.
    """
* section[recommendations] ^short = "Recommendations Section"
* section[recommendations].code = CompositionSectionSliceCodesCS#recommendations
* section[recommendations].title = "Recommendations Section"

* section[recommendations].entry 1..*
* section[recommendations].entry only Reference(BreastMedicationRequest or BreastServiceRequest or ServiceRecommendation)
* section[recommendations].entry ^short = "BreastMedicationRequest or BreastServiceRequest or ServiceRecommendation references"
* section[recommendations].entry ^definition = """
	   This section contains references to recommended actions 
	aken in response to the observations and findings of this report.
    """
    //#apply NodeElement("C", "section:recommendations", "Recommendations")
    //#apply LinkByBinding("focus", "^%ProfileId%/section:recommendations/$", ".entry", "Cmp")