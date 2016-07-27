tests
testSelfReferentialEntityReplacement
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ENTITY first "&first;">]><root>&first;</root>']
		raise: XMLEntityDepthException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [<!ENTITY % first "&#37;first;">%first;]><root/>']
		raise: XMLEntityDepthException.