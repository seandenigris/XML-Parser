tests
testElementContentModelBad
	#('<!DOCTYPE root [<!ELEMENT root ()>]>'
		'<!DOCTYPE root [<!ELEMENT root (one,)>]>'
		'<!DOCTYPE root [<!ELEMENT root (one|)>]>'
		'<!DOCTYPE root [<!ELEMENT root (one)(two)>]>'
		'<!DOCTYPE root [<!ELEMENT root (one|,two)>]>'
	) do: [:each |
		self
			should: [SAXHandler parse: each]
			raise: XMLWellFormednessException].

	'|,?*+' do: [:each |
		self
			should: [SAXHandler parse: '<!DOCTYPE root [<!ELEMENT root (', each asString, 'one)>]>']
			raise: XMLWellFormednessException].