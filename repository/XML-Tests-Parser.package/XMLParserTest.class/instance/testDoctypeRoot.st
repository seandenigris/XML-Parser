tests
testDoctypeRoot
	| xml |

	xml := '<!DOCTYPE root><invalidRoot/>'.
	self
		should: [XMLDOMParser parse: xml]
		raise: XMLValidationException.
	XMLDOMParser
		parse: xml
		usingNamespaces: false
		validation: false.