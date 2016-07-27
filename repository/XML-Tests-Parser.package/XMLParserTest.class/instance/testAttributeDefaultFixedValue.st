tests
testAttributeDefaultFixedValue
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA #FIXED "fixedDefault"
				one CDATA #FIXED "redundant"
				two IDREF #FIXED "fixedDefaultTwo"
				three CDATA #FIXED ""
				four ID #REQUIRED >
		]>'.

	document :=
		XMLDOMParser parse:
			dtd, '<root one=''fixedDefault'' two="  fixedDefaultTwo  " three="" four="fixedDefaultTwo"/>'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'fixedDefault';
		assert: (root attributeAt: 'two') = 'fixedDefaultTwo';
		assert: (root includesAttribute: 'three');
		assert: (root attributeAt: 'three') isEmpty;
		assert: (root attributeAt: 'four') = 'fixedDefaultTwo'.

	"attributes with fixed defaults are set automatically if not present"
	document := XMLDOMParser parse: dtd, '<root four="fixedDefaultTwo"/>'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'fixedDefault';
		assert: (root attributeAt: 'two') = 'fixedDefaultTwo';
		assert: (root includesAttribute: 'three');
		assert: (root attributeAt: 'three') isEmpty.

	"but if present cannot have non-default values"
	#('<root one="nonDefault" />'
		'<root two="nonDefault"/>'
		'<root three="nonDefault"/>') do: [:each |
		self
			should: [SAXHandler parse: dtd, each]
			raise: XMLValidationException].