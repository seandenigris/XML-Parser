tests
testAttributeEnumerationDeclaration
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root ANY>
			<!ATTLIST root number ( one | two | three) #IMPLIED>
		]>'.
	#('one' 'two' 'three' '  one  ' '		two 	' '
		three
		') do: [:each |
		self
			shouldnt: [SAXHandler parse: dtd, '<root number="', each, '"/>']
			raise: XMLValidationException].
	self
		should: [SAXHandler parse: dtd, '<root number="four"/>']
		raise: XMLValidationException.
	self
		shouldnt: [
			(SAXHandler on: dtd, '<root number="four"/>')
				isValidating: false;
				parseDocument]
		raise: XMLValidationException.