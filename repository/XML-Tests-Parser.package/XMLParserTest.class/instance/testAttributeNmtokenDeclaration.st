tests
testAttributeNmtokenDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ATTLIST root name NMTOKEN #IMPLIED>
		<!ATTLIST root names NMTOKENS #IMPLIED>]>'.
	XMLDOMParser parse: dtd, '<root name="one" names="  one  two three"/> '.
	self
		should: [XMLDOMParser parse: dtd, '<root name="1"/> ']
		raise: XMLValidationException.
	self
		should: [XMLDOMParser parse: dtd, '<root names="1 2 3" />']
		raise: XMLValidationException.