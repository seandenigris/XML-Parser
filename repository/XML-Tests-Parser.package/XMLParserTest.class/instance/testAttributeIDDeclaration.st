tests
testAttributeIDDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root (unique|unique2)+>
		<!ELEMENT unique EMPTY>
		<!ELEMENT unique2 EMPTY>
		<!ATTLIST unique id ID #REQUIRED>
		<!ATTLIST unique2 id ID #REQUIRED>]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '<root><unique id=" one "/><unique id="two"/><unique2 id="three"/></root> ']
		raise:XMLValidationException.
	self
		should: [
			SAXHandler parse:
				dtd, '<root><unique id="one"/><unique id=" one "/></root> ']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ATTLIST unique
						id ID #REQUIRED
						id2 ID #REQUIRED>]>
					<root/>']
		raise: XMLValidationException.