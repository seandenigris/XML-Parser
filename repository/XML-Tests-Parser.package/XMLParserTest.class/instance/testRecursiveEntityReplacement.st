tests
testRecursiveEntityReplacement
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY first "&second;">
					<!ENTITY second "&first;">]>
				<root>&first;</root>']
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % first "%second;">
					<!ENTITY % second "%first;">
					%first;]>
				<root/>']
		raise: XMLParserException.