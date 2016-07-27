tests
testContentlessDocument
	#(''
		' 	'
		'<?xml version="1.0"?>'
		'	<!DOCTYPE test>'
		'	<!--comment-->'
		'	<?target data?>'
		'<?xml version="1.0"?><!DOCTYPE test>'
		'<?xml version="1.0"?><!DOCTYPE test><!--comment-->'
		'<?xml version="1.0"?><!DOCTYPE test><!--comment--><?pi data?>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]