tests
testAttributeNmtokenDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root ANY>
		<!ATTLIST root name NMTOKEN #IMPLIED>
		<!ATTLIST root names NMTOKENS #IMPLIED>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<root name="one" names="  one  two three"/> ']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root name="1"/> ']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root names="1 2 3" />']
		raise: XMLValidationException.