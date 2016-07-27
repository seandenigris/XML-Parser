tests
testEntityUndeclaredStandalone
	| xml |

	xml := '
		<!DOCTYPE root [
			<!ENTITY declared "">
		]>
		<root>&undeclared;</root>'.
	self
		should: [SAXHandler parse: xml]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: '<?xml version="1.0" standalone="yes"?>', xml]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '<?xml version="1.0" standalone="yes"?>', xml)
				isValidating: false;
				parseDocument]
		raise: XMLWellFormednessException.
	self
		shouldnt: [
			(SAXHandler on: '<?xml version="1.0" standalone="no"?>', xml)
				isValidating: false;
				parseDocument]
		raise: XMLParserException.