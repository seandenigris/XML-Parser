tests
testDoctypeDeclarationWhitespace
	#('<!DOCTYPEtest>'
		'<!DOCTYPE test PUBLIC"publicid">'
		'<!DOCTYPE test PUBLIC "publicid""systemid">'
		'<!DOCTYPE test SYSTEM"systemid">')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].
	#('<!DOCTYPE test PUBLIC "publicid" "systemid"	 >'
		'<!DOCTYPE test SYSTEM "systemid"	>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].