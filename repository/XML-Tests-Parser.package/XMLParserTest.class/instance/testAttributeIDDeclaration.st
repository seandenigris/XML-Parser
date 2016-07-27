tests
testAttributeIDDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [<!ATTLIST unique id ID #REQUIRED>]>'.
	XMLDOMParser parse: dtd, '<root><unique id=" one "/><unique id="two"/></root> '.
	self
		should: [
			XMLDOMParser parse:
				dtd, '<root><unique id="one"/><unique id=" one "/></root> ']
		raise: XMLValidationException.