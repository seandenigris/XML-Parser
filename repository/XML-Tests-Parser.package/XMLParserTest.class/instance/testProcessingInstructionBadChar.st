tests
testProcessingInstructionBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [SAXHandler parse: '<?pi ', each asString, '?><test/>']
			raise: XMLWellFormednessException]