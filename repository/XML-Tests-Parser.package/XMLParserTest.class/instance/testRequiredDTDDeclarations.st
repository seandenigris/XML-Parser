tests
testRequiredDTDDeclarations
	self
		shouldnt: [
			(SAXHandler on: '<!DOCTYPE root [<!ELEMENT root EMPTY>]><root/>')
				requiresDTDDeclarations: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '<root/>')
				requiresDTDDeclarations: true;
				parseDocument]
		raise: XMLValidationException.