tests
testUndeclaredElements
	self
		shouldnt: [
			SAXHandler
				parse: '<!DOCTYPE root [<!ENTITY ignored "">]><root/>'
				usingNamespaces:true
				validation: true]
		raise:XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ELEMENT root ANY>]><root><undeclared/></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ATTLIST root name CDATA #IMPLIED>]><root/>']
		raise: XMLValidationException.