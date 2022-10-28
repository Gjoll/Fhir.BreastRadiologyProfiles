Profile: CystAbnormality
Parent: us-core-observation-imaging
Title: "Cyst Abnormality"
Description: """
  Cyst abnormality observation.
  """
* code = RadLexCDE#RDE1575
* code 1..1
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Component slicing"
* component contains cystPresence 1..1
* component[cystPresence] ^short = "Cyst Presence component."
* component[cystPresence] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[cystPresence] ^definition = """
    This slice contains the required component that specifies the presence or absence of a cyst.
    The value of this component is a codeable concept chosen from the rde1575-cyst valueset.
    """
* component[cystPresence].code 1..1
* component[cystPresence].code ^short = "Cyst Presence component code."
* component[cystPresence].code ^definition = """
    This code identifies the Cyst Presence component.
    """
* component[cystPresence].code = RadLexCDE#RDE1575
* component[cystPresence].value[x] 1..1
* component[cystPresence].value[x] only CodeableConcept
* component[cystPresence].value[x] from rde1575-cyst
* component contains cystType 0..1
* component[cystType] ^short = "Cyst Type component."
* component[cystType] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[cystType] ^definition = """
    This slice contains the optional component that refines the cyst type.
    The value of this component is a codeable concept chosen from the rde1577-type valueset.
    """
* component[cystType].code 1..1
* component[cystType].code ^short = "Cyst Type component code."
* component[cystType].code ^definition = """
    This code identifies the Cyst Type component.
    """
* component[cystType].code = RadLexCDE#RDE1577
* component[cystType].value[x] 1..1
* component[cystType].value[x] only CodeableConcept
* component[cystType].value[x] from rde1577-type
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
  //$#apply Observation.BreastBodyLocationRequiredFragment()
  
  //$#apply Observation.Component.ObservedChangesFragment()
  //$#apply Observation.Hasmember.BiRadAssessmentCategoryFragment()


  // Define Shape Slice
* component contains shape 0..1
* component[shape] ^short = "Shape component."
* component[shape] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[shape] ^definition = """
    This slice contains the optional component that define the shape of the abnormality.
    The value of this component is a codeable concept chosen from the ShapeVS valueset.
    """
* component[shape].code 1..1
* component[shape].code ^short = "Shape component code."
* component[shape].code ^definition = """
    This code identifies the Shape component.
    """
* component[shape].code = RadLexCDE#RDE1576
* component[shape].value[x] 1..1
* component[shape].value[x] only CodeableConcept
* component[shape].value[x] from rde1576-shape

  // Define Density Slice
* component contains density 0..1
* component[density] ^short = "Density component."
* component[density] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[density] ^definition = """
    This slice contains the optional component that define the density of the abnormality.
    The value of this component is a codeable concept chosen from the RDE1578 Density valueset.
    """
* component[density].code 1..1
* component[density].code ^short = "Density component code."
* component[density].code ^definition = """
    This code identifies the Density component.
    """
* component[density].code = RadLexCDE#RDE1578
* component[density].value[x] 0..1
* component[density].value[x] only CodeableConcept
* component[density].value[x] from rde1578-density


  // Define Margin Slice
* component contains margin 0..1
* component[margin] ^short = "Margin component."
* component[margin] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[margin] ^definition = """
    This slice contains the optional component that define the margin of the abnormality.
    The value of this component is a codeable concept chosen from the "RDE1579 Margin" valueset.
    """
* component[margin].code 1..1
* component[margin].code ^short = "Margin component code."
* component[margin].code ^definition = """
    This code identifies the Margin component.
    """
* component[margin].code = RadLexCDE#RDE1579
* component[margin].value[x] 1..1
* component[margin].value[x] only CodeableConcept
* component[margin].value[x] from rde1579-margin

  // Define Orientation Slice
* component contains orientation 0..1
* component[orientation] ^short = "Orientation component."
* component[orientation] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[orientation] ^definition = """
    This slice contains the optional component that define the orientation of the abnormality.
    The value of this component is a codeable concept chosen from the "RDE1580 Orientation" valueset.
    """
* component[orientation].code 1..1
* component[orientation].code ^short = "Orientation component code."
* component[orientation].code ^definition = """
    This code identifies the Orientation component.
    """
* component[orientation].code = RadLexCDE#RDE1580
* component[orientation].value[x] 1..1
* component[orientation].value[x] only CodeableConcept
* component[orientation].value[x] from rde1580-orientation
* component contains observedCount 0..1
* component[observedCount] ^short = "Observed Count component. component."
* component[observedCount] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[observedCount] ^definition = """
      This component slice contains the number of items observed.
    This can be a quantity (i.e. 5), or a range (1 to 5).
    
    If the lower bound of the range is set but not the upper bound,
    then it means {lower bound} or more.
    
    If the lower bound of the range is not set but the upper bound is,
    then it means {upper bound} or less.
    """
* component[observedCount].code 1..1
* component[observedCount].code ^short = "Observed Count component. component code."
* component[observedCount].code ^definition = """
    This code identifies the Observed Count component. component.
    """
* component[observedCount].code = RadLexCDE#RDE1567
* component[observedCount].value[x] 1..1
* component[observedCount].value[x] only Quantity or Range
  //$#apply Observation.Component.ObservedDistributionFragment()
  // Define distribution region size.
* component contains obsSize 0..3
* component[obsSize] ^short = "Observed size. component."
* component[obsSize] ^comment = """
    This is one component of a group of components that are part of the observation.
    """
* component[obsSize] ^definition = """
      This component slice contains the size of an item observed.
    There may be one, two, or three values indicating a size of
    one dimension (length), two dimensions (area), or three dimensions (volume).
    
    Each dimension can be a quantity (i.e. 5), or a range (1 to 5).
    
    If the lower bound of the range is set but not the upper bound, 
    then the size is {lower bound} or greater.
    
    If the upper bound of the range is set but not the lower bound,
    then the size is {upper bound} or less.
    """
* component[obsSize].code 1..1
* component[obsSize].code ^short = "Observed size. component code."
* component[obsSize].code ^definition = """
    This code identifies the Observed size. component.
    """
* component[obsSize].code = RadLexCDE#RDE1570
* component[obsSize].value[x] 1..1
* component[obsSize].value[x] only Quantity or Range
* component[obsSize].valueQuantity = $UCUM#mm
* component[obsSize].valueRange.low = $UCUM#mm
* component[obsSize].valueRange.high = $UCUM#mm
  //$#apply Observation.Component.NotPreviouslySeenFragment()
  //$#apply Observation.Component.CorrespondsWithFragment()
  //$#apply Observation.Component.PreviouslyDemonstratedByFragment()

  //$#apply Observation.HasMember.AssociatedFeatureFragment()
  //$#apply Observation.HasMember.ConsistentWithFragment()
  //$#apply Observation.HasMember.TumorSatelliteFragment()