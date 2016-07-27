tests
testInvalidNameChar
	#(16rBF 16rD7 16rF7 16r37E
		16r2000 16r200B 16r200E 16r206F
		16r2190 16r2BFF 16r2FFF 16r3000
		16rD800 16rF8FF 16rFDD0 16rFDEF
		16rFFFE 16r0FFFF 16rF0000) do: [:each | | charString |
		charString := each asCharacter asString.
		self
			should: [SAXHandler parse: '<test', charString, '/>']
			raise: XMLWellFormednessException.
		self
			should: [SAXHandler parse: '<test name', charString, '="value"/>']
			raise: XMLWellFormednessException]