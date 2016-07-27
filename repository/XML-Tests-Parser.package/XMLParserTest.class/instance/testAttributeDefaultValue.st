tests
testAttributeDefaultValue
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA "default"
				one CDATA "redundant"
				two CDATA ""
				three NMTOKEN " defaultThree " >
		]>'.

	document :=
		XMLDOMParser parse:
			dtd, '<root one=''nonDefault'' two="nonDefaultTwo" three="nonDefaultThree"/>'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'nonDefault';
		assert: (root attributeAt: 'two') = 'nonDefaultTwo';
		assert: (root attributeAt: 'three') = 'nonDefaultThree'.

	"empty but present attributes shouldn't get the default value"
	document := XMLDOMParser parse: dtd, '<root one='''' two=""/>'.
	root := document root.
		self
			assert: (root includesAttribute: 'one');
			assert: (root attributeAt: 'one') isEmpty;
			assert: (root includesAttribute: 'two');
			assert: (root attributeAt: 'two') isEmpty;
			assert: (root attributeAt: 'three') = 'defaultThree'.

	"attributes with defaults are set automatically if not present"
	document := XMLDOMParser parse: dtd, '<root />'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'default';
		assert: (root includesAttribute: 'two');
		assert: (root attributeAt: 'two') isEmpty;
		assert: (root attributeAt: 'three') = 'defaultThree'.