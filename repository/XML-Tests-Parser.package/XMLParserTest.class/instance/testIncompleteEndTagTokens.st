tests
testIncompleteEndTagTokens
	#('<test></' '<test></test' '<test></ test' '<test></ test>')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]