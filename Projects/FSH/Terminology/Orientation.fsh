ValueSet:  OrientationVS
Title: "Orientation ValueSet"
Description:  "Orientation Value Set"
  * codes from system OrientationCS




CodeSystem: OrientationCS
Title: "Orientation CodeSystem"
Description: "Orientation CodeSystem"
  * #ParallelToSkin "Parallel to skin"
    """
    The lesion/mass is oriented parellel to skin.
    
    Valid for the following modalities: MG US MRI NM.
    """

  * #PerpendicularToSkin "Perpendicular to skin (not parallel)"
    """
    The lesion/mass is oriented perpendicular to skin.
    
    Valid for the following modalities: MG US MRI NM.
    """

  * #TallerThanWide "Taller than wide"
    """
    The nodule is taller than wide.
    A nodule is said to be taller than wide when it is
    greater in the direction normal to the skin than
    in the parallel ones.
    
    Valid for the following modalities: US MRI.
    """

  * #WiderThanTall "Wider than tall"
    """
    The nodule is wider than tall.
    A nodule is said to be wider than tall when it is
    larger in the direction not parallel to the direction
    of the skin.
    
    Valid for the following modalities: US MRI.
    """