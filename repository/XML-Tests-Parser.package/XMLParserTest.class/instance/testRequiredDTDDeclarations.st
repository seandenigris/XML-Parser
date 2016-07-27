tests
testRequiredDTDDeclarations
	self
		shouldnt: [
			(SAXHandler on: '<!DOCTYPE root [<!ELEMENT root EMPTY>]><root/>')
				requiresDocumentConstraints: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '<root/>')
				requiresDocumentConstraints: true;
				parseDocument]
		raise: XMLValidationException.