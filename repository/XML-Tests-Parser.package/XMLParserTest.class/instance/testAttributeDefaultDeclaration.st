tests
testAttributeDefaultDeclaration
	| dtd document |

	dtd := '<!DOCTYPE root [
		<!ATTLIST root one #IMPLIED >
		<!ATTLIST root two #REQUIRED >
		<!ATTLIST root three #FIXED "fixedDefault" >
		<!ATTLIST root three #FIXED "redundant" >
		<!ATTLIST root four "default" >]>'.
	document := XMLDOMParser parse: dtd, '<root two="required" three="nonDefault" />'.
	self
		assert: (document root attributeAt: 'two') = 'required';
		assert: (document root includesAttribute: 'one');
		assert: (document root attributeAt: 'three') = 'fixedDefault';
		assert: (document root attributeAt: 'four') = 'default'.
	self should: [XMLDOMParser parse: dtd, '<root />'] raise: XMLValidationException.