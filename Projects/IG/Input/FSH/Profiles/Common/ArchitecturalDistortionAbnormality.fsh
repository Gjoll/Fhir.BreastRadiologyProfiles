Profile: ArchitecturalDistortionAbnormality
Parent: us-core-observation-imaging
Title: "Architectural Distortion Abnormality"
Description: """
    Architectural Distortion abnormality observation.
    """
* code = ObservationCodesCS#abnormalityArchitecturalDistortionObservation
* code 1..1
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.ordered = false
* category ^slicing.description = "Observation Category = imaging"
* category contains categoryImaging 1..1
* category[categoryImaging] = http://terminology.hl7.org/CodeSystem/observation-category#imaging
    ///#apply DefineElement("category:categoryImaging", "Category", "Category")
    ///#apply SetElement("category:categoryImaging", "Category", "http://terminology.hl7.org/CodeSystem/observation-category#imaging")
* interpretation 0..0
* referenceRange 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* specimen 0..0
* contained 0..0
* device 0..0
* dataAbsentReason 0..0
* value[x] 0..0
* interpretation 0..0
* referenceRange 0..0
* bodySite 1..1
* bodySite.extension contains BreastBodyLocationExtension named breastBodyLocation 1..1
* bodySite.extension[breastBodyLocation] ^short = "breastBodyLocation extension."
* bodySite.extension[breastBodyLocation] ^definition = "This extension slice contains the breastBodyLocation extension."
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Component slicing"
* component contains obsChanges 0..*
* component[obsChanges] ^short = "Observed Change In Abnormality component."
* component[obsChanges] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[obsChanges] ^definition = """
    This slice contains the optional components that define observed changes in this abnormality.
    The value of this component is a codeable concept chosen from the ObservedChangesVS valueset.
    """
* component[obsChanges].code 1..1
* component[obsChanges].code ^short = "Observed Change In Abnormality component code."
* component[obsChanges].code ^definition = """
    This code identifies the Observed Change In Abnormality component.
    """
* component[obsChanges].code = ObservationComponentSliceCodesCS#obsChanges
* component[obsChanges].value[x] 1..1
* component[obsChanges].value[x] only CodeableConcept
* component[obsChanges].value[x] from ObservedChangesVS
* hasMember ^slicing.discriminator.type = #value
* hasMember ^slicing.discriminator.path = "url"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.ordered = false
* hasMember ^slicing.description = "hasMember slicing"
* hasMember contains biRadAssessmentCategory 0..1
* hasMember[biRadAssessmentCategory] ^short = "BiRads Assessment Category Code Code hasMember."
* hasMember[biRadAssessmentCategory] only Reference(BreastAssessmentCategory)
* component contains notPreviouslySeen 0..*
* component[notPreviouslySeen] ^short = "Not Previously Seen component."
* component[notPreviouslySeen] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[notPreviouslySeen] ^definition = """
    This optional slice indicates previous procedures in which this abnormality was not seen. The reason why the 
    the abnormality was not seen is not defined, but is ofen related to mechanical positioning or other circumstances which
    caused the abnormality to not show up on a previous procedure.
    The value of this component is a codeable concept chosen from the NotPreviouslySeenVS valueset.
    """
* component[notPreviouslySeen].code 1..1
* component[notPreviouslySeen].code ^short = "Not Previously Seen component code."
* component[notPreviouslySeen].code ^definition = """
    This code identifies the Not Previously Seen component.
    """
* component[notPreviouslySeen].code = ObservationComponentSliceCodesCS#notPreviouslySeen
* component[notPreviouslySeen].value[x] 1..1
* component[notPreviouslySeen].value[x] only CodeableConcept
* component[notPreviouslySeen].value[x] from NotPreviouslySeenVS
* component contains correspondsWith 0..*
* component[correspondsWith] ^short = "Corresponds With Abnormality component."
* component[correspondsWith] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[correspondsWith] ^definition = """
    This slice contains the optional components that define what this observation corresponds with.
    The value of this component is a codeable concept chosen from the CorrespondsWithVS valueset.
    """
* component[correspondsWith].code 1..1
* component[correspondsWith].code ^short = "Corresponds With Abnormality component code."
* component[correspondsWith].code ^definition = """
    This code identifies the Corresponds With Abnormality component.
    """
* component[correspondsWith].code = ObservationComponentSliceCodesCS#correspondsWith
* component[correspondsWith].value[x] 1..1
* component[correspondsWith].value[x] only CodeableConcept
* component[correspondsWith].value[x] from CorrespondsWithVS
* component contains prevDemBy 0..*
* component[prevDemBy] ^short = "Previously Demonstrated by component."
* component[prevDemBy] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[prevDemBy] ^definition = """
    This slice contains the optional components that specifies what this observation 
    has been previously demonstrated by.
    The value of this component is a codeable concept chosen from the 
    PreviouslyDemonstratedByVS valueset.
    """
* component[prevDemBy].code 1..1
* component[prevDemBy].code ^short = "Previously Demonstrated by component code."
* component[prevDemBy].code ^definition = """
    This code identifies the Previously Demonstrated by component.
    """
* component[prevDemBy].code = ObservationComponentSliceCodesCS#prevDemBy
* component[prevDemBy].value[x] 1..1
* component[prevDemBy].value[x] only CodeableConcept
* component[prevDemBy].value[x] from PreviouslyDemonstratedByVS
* hasMember contains associatedFeature 0..*
* hasMember[associatedFeature] ^short = "'Associated Feature' reference. hasMember."
* hasMember[associatedFeature] only Reference(AssociatedFeature)
* hasMember contains consistentWith 0..*
* hasMember[consistentWith] ^short = "'Consistent With' reference. hasMember."
* hasMember[consistentWith] only Reference(ConsistentWith)