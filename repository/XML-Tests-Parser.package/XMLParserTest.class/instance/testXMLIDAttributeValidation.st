tests
testXMLIDAttributeValidation
	| xml xmlWithDuplicateId |

	xml := '<a xml:id="one"><b xml:id="two"/></a>'.
	xmlWithDuplicateId := '<a xml:id="one"><b xml:id="one"/></a>'.
	self
		shouldnt: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: xmlWithDuplicateId]
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: xmlWithDuplicateId)
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.