tests
testAttributeDefaultDeclaration
	| dtd document |

	dtd := '<!DOCTYPE root [
		<!ELEMENT root EMPTY>
		<!ATTLIST root one CDATA #IMPLIED
						two CDATA #REQUIRED
						three CDATA #FIXED "fixedDefault"
						three CDATA #FIXED "redundant"
						four CDATA "default" >]>'.
	document := XMLDOMParser parse: dtd, '<root two="required" three="nonDefault" />'.
	self
		assert: (document root attributeAt: 'two') = 'required';
		deny: (document root includesAttribute: 'one');
		assert: (document root attributeAt: 'three') = 'fixedDefault';
		assert: (document root attributeAt: 'four') = 'default'.
	self should: [XMLDOMParser parse: dtd, '<root />'] raise: XMLValidationException.