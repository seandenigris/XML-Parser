tests
testIncompleteCDataTokens
	#('<test><![' '<test><![CDATA[' '<test><![CDATA[ test'
		'<test><![CDATA[ test ]' '<test><![CDATA[ test ]]')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]