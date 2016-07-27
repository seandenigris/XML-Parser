tests
testInvalidElementContentModels
	self
		should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root ()>]>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (one,)>]>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (one|)>]>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (one)(two)>]>']
		raise: XMLWellFormednessException.
	self
		should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (one|,two)>]>']
		raise: XMLWellFormednessException.
	'|,?*+' do: [:each |
		self
			should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (', each asString, 'one)>]>']
			raise: XMLWellFormednessException].