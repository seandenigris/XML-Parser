tests
testAttributeNmtokenDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root ANY>
		<!ATTLIST root name NMTOKEN #IMPLIED>
		<!ATTLIST root names NMTOKENS #IMPLIED>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<root name=" one " names="  one  two three "/> ']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root name="#" names="one two"/>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root name="one" names="# #" />']
		raise: XMLValidationException.