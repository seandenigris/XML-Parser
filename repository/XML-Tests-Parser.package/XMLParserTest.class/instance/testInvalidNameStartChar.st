tests
testInvalidNameStartChar
	#($- $. $0 $9 16rB7 16r0300 16r036F 16r203F 16r2040) do: [:each | | charString |
		charString := each asCharacter asString.
		self
			should: [SAXHandler parse: '<', charString, 'test/>']
			raise: XMLWellFormednessException.
		self
			should: [SAXHandler parse: '<test ', charString, 'name="value"/>']
			raise: XMLWellFormednessException.
		self
			shouldnt: [SAXHandler parse: '<test', charString, ' name', charString, '="value"/>']
			raise: XMLWellFormednessException]