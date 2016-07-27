tests
testDoctypeRoot
	| xml |

	xml := '<!DOCTYPE root><invalidRoot/>'.
	self
		should: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler
				parse: xml
				usingNamespaces: false
				validation: false]
		raise: XMLValidationException 