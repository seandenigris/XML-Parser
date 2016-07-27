tests
testEntityDeclarationWhitespace
	#('<!DOCTYPE test [<!ENTITYname "value">]>'
		'<!DOCTYPE test [<!ENTITY name"value">]>'
		'<!DOCTYPE test [<!ENTITY name PUBLIC"publicid" "systemid">]>'
		'<!DOCTYPE test [<!ENTITY name PUBLIC "publicid""systemid">]>'
		'<!DOCTYPE test [<!ENTITY name SYSTEM"systemid">]>'
		'<!DOCTYPE test [<!ENTITY name PUBLIC "publicid" "systemid"NDATA GIF>]>'
		'<!DOCTYPE test [<!ENTITY name SYSTEM "systemid"NDATA GIF>]>'
		'<!DOCTYPE test [<!ENTITY% name "value">]>'
		'<!DOCTYPE test [<!ENTITY %name "value">]>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].
	#('<!DOCTYPE test [<!ENTITY  name 	"value"   >]>'
		'<!DOCTYPE test [<!ENTITY   % 	 name "value"	>]>'
		'<!DOCTYPE test [<!ENTITY   name   PUBLIC   "publicid"    "systemid"   >]>'
		'<!DOCTYPE test [<!ENTITY   name   SYSTEM    "systemid"   >]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].