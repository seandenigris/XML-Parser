tests
testProcessingInstructionBadTarget
	#('<test><?xml version="1.0"?></test>'
		'<test><?XML version="1.0"?></test>'
		'<test><?XmL version="1.0"?></test>'
		'<test><?xMl version="1.0"?></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]