tests
testAttributeIDRefDeclaration
	| dtd |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root (unique|ref|refs)+>
		<!ELEMENT unique EMPTY>
		<!ELEMENT ref EMPTY>
		<!ELEMENT refs EMPTY>
		<!ATTLIST unique id ID #REQUIRED>
		<!ATTLIST ref idref IDREF #REQUIRED>
		<!ATTLIST refs idrefs IDREFS #REQUIRED>]>'.
	SAXHandler parse:
		dtd, '<root>
		<unique id=" one "/><unique id=" two "/>
		<ref idref="one"/><refs idrefs="  one  two"/>
		</root> '.
	self
		should: [
			SAXHandler parse:
				dtd, '<root><unique id="one"/><ref idref="two"/></root> ']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				dtd, '<root><unique id="one"/><refs idrefs="one two"/></root> ']
		raise: XMLValidationException.