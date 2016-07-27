tests
testIncompleteDoctypeTokens
	#('<!DOCTYPE' '<!DOCTYPE >'
		'<!DOCTYPE test' '<!DOCTYPE test PUBLIC' '<!DOCTYPE test PUBLIC "pubid'
		'<!DOCTYPE test PUBLIC "pubid" "sysid' '<!DOCTYPE test PUBLIC "pubid" "sysid"'
		'<!DOCTYPE test SYSTEM' '<!DOCTYPE test SYSTEM "sysid' '<!DOCTYPE test SYSTEM "sysid"'
		'<!DOCTYPE test [' '<!DOCTYPE test []')
		do: [:each | 
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]