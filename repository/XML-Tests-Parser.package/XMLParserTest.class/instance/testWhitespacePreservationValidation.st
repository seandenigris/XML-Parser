tests
testWhitespacePreservationValidation
	| dtd |

	dtd := '<!DOCTYPE whitespace [
			<!ELEMENT whitespace EMPTY>
			<!ATTLIST whitespace xml:space (default|preserve) ''preserve''>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<whitespace> </whitespace>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<whitespace><![CDATA[ ]]></whitespace>']
		raise: XMLValidationException.