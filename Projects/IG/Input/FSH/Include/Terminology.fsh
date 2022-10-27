/*
	CodeSystem common ruleset.
*/
 
RuleSet: ValueSet_Common
* ^experimental = false

RuleSet: CodeSystem_Common
* ^experimental = false
* ^caseSensitive = false

/*
ACR common ruleset.
*/
 
RuleSet: ACRValueSetCommon
* ^experimental = true
* ^copyright = """
	ACR Copyright here.
    """

RuleSet: ACRCodeSystemCommon
* ^experimental = true
* ^caseSensitive = false
* ^copyright = """
	ACR Copyright here.
    """