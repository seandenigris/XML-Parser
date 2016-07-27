tests
testUndeclaredEntities
	| document dtd content |

	dtd := '<!DOCTYPE root [%undeclared;]>'.
	content := '<root>&undeclared;test&undeclared;</root>'.
	document :=
		XMLDOMParser
			parse: dtd, content
			usingNamespaces: false
			validation: false.
	self assert: document allNodes second contentString = 'test'.
	self should: [XMLDOMParser parse: content] raise: XMLValidationException.
	self should: [XMLDOMParser parse: dtd, '<root/>'] raise: XMLValidationException.