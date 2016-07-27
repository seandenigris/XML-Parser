tests
testAttributeDefaultValue
	| dtd document root |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root EMPTY>
			<!ATTLIST root
				one CDATA "default"
				one CDATA "redundant"
				two CDATA "" >
		]>'.

	document :=
		XMLDOMParser parse:
			dtd, '<root one=''nonDefault'' two="nonDefaultTwo" />'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'nonDefault';
		assert: (root attributeAt: 'two') = 'nonDefaultTwo'.

	document := XMLDOMParser parse: dtd, '<root one='''' two="" />'.
	root := document root.
	self
		assert: (root includesAttribute: 'one');
		assert: (root attributeAt: 'one') isEmpty;
		assert: (root includesAttribute: 'two');
		assert: (root attributeAt: 'two') isEmpty.

	"attributes with defaults are set automatically if not present"
	document := XMLDOMParser parse: dtd, '<root />'.
	root := document root.
	self
		assert: (root attributeAt: 'one') = 'default';
		assert: (root includesAttribute: 'two');
		assert: (root attributeAt: 'two') isEmpty.