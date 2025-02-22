ValueSet:  BreastQuadrantVS
Title: "Breast Quadrant ValueSet"
Description:  """
    This value set contains codes that describe the various breast quadrants.
    It is used to describe the quadrant location of an item of interest.
    """
* ^copyright = """
    This value set includes content from SNOMED CT, 
    which is copyright © 2002+ International Health 
    Terminology Standards Development Organisation (IHTSDO), 
    and distributed by agreement between IHTSDO and HL7.
    Implementer use of SNOMED CT is not covered by this agreement"
    """

* insert ValueSet_Common
* include $SCT#19100000 "Structure of lower inner quadrant of breast (body structure)"
* include $SCT#33564002 "Structure of lower outer quadrant of breast (body structure)"
* include $SCT#77831004 "Structure of upper inner quadrant of breast (body structure)"
* include $SCT#76365002 "Structure of upper outer quadrant of breast (body structure)"