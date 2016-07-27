tests
testAttributeDeclarationWhitespace
	#('<!DOCTYPE test [<!ATTLISTtest name (value) #FIXED "value">]>'
		'<!DOCTYPE test [<!ATTLIST test name(value) #FIXED "value">]>'
		'<!DOCTYPE test [<!ATTLIST test name (value)#FIXED "value">]>'
		'<!DOCTYPE test [<!ATTLIST test name (value) #FIXED"value">]>'
		'<!DOCTYPE test [<!ATTLIST test name (value) #FIXED "value"name2
			(value) #FIXED "value">]>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].
	#('<!DOCTYPE test [<!ATTLIST   test   name  ( value )  #FIXED  "value">]>'
		'<!DOCTYPE test [
			<!ATTLIST test
				name (value) #FIXED "value"
				name2 (value) #FIXED "value">]>'
		'<!DOCTYPE test [<!ATTLIST   test   >]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each]
				raise: XMLWellFormednessException].