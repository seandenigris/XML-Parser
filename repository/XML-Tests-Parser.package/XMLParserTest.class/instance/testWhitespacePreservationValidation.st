tests
testWhitespacePreservationValidation
	| dtd |

	dtd := '
		<!DOCTYPE whitespace [
			<!ELEMENT whitespace EMPTY>
			<!ATTLIST whitespace xml:space (default|preserve) ''preserve''>
		]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		shouldnt: [SAXHandler parse: dtd, '<whitespace xml:space="default"> </whitespace>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(preserve|default)'),
				'<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(preserve)'),
				'<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(default|preserve|other)'),
				'<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: 'CDATA'),
				'<whitespace></whitespace>']
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
		should: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: '(not|valid)'),
				'<whitespace></whitespace>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				(dtd copyReplaceAll: '(default|preserve)' with: 'CDATA'),
				'<whitespace></whitespace>']
		raise: XMLValidationException.