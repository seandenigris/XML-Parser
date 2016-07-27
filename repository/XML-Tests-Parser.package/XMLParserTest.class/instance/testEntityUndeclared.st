tests
testEntityUndeclared
	| document dtd content |

	dtd := '<!DOCTYPE root [<!ENTITY declared "">%undeclared;]>'.
	content := '<root>&undeclared;test&undeclared;</root>'.
	self should: [XMLDOMParser parse: content] raise: XMLValidationException.
	self should: [XMLDOMParser parse: dtd, '<root/>'] raise: XMLValidationException.
	self
		shouldnt: [
			document :=
				XMLDOMParser
					parse: dtd, content
					usingNamespaces: false
					validation: false]
		raise: XMLValidationException.
	self assert: document allNodes second contentString = 'test'.