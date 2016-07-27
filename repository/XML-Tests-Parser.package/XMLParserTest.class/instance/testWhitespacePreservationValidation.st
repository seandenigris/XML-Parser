tests
testWhitespacePreservationValidation
	| dtd |

	dtd := '
		<!DOCTYPE whitespace [
			<!ELEMENT whitespace EMPTY>
			<!ATTLIST whitespace xml:space (default|preserve) ''preserve''>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		shouldnt: [SAXHandler parse: dtd, '<whitespace xml:space="default"> </whitespace>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(preserve|default)')]
		raise: XMLValidationException.
	self
		shouldnt: [SAXHandler parse: (dtd copyReplaceAll: '(default|preserve)' with: '(preserve)')]
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(default|preserve|other)')]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: (dtd copyReplaceAll: '(default|preserve)' with: 'CDATA')]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<whitespace> </whitespace>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<whitespace><![CDATA[ ]]></whitespace>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<whitespace xml:space="default"><![CDATA[ ]]></whitespace>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: (dtd copyReplaceAll: '(default|preserve)' with: '(not|valid)')]
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: (dtd copyReplaceAll: '(default|preserve)' with: 'CDATA')]
		raise: XMLValidationException.