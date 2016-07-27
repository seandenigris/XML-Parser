tests
testXMLDeclarationUnterminated
	#('<?xml'
		'<?xml ?'
		'<?xml ?>'
		'<?xml version'
		'<?xml version='
		'<?xml version="1.0'
		'<?xml version="1.0" encoding'
		'<?xml version="1.0" encoding="UTF-8'
		'<?xml version="1.0" encoding="UTF-8" standalone'
		'<?xml version="1.0" encoding="UTF-8" standalone="yes'
		'<?xml version="1.0" encoding="UTF-8" standalone="yes"'
		'<?xml version="1.0" encoding="UTF-8" standalone="yes"?')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]