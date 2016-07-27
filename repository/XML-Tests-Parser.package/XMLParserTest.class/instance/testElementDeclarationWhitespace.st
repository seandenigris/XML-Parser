tests
testElementDeclarationWhitespace
	self
		should: [SAXHandler parse: '<!DOCTYPE test [<!ELEMENTname (#PCDATA)>]>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<!DOCTYPE test [<!ELEMENT name(#PCDATA)>]>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<!DOCTYPE test [<!ELEMENT name (	#PCDATA	)   >]>']
		raise: XMLWellFormednessException.