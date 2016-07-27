tests
testIncompleteStartTagTokens
	#('<' '<test' '<test name'
		'<test name=' '<test name="value' '<test name="value"'
		'<test name="value" /')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]