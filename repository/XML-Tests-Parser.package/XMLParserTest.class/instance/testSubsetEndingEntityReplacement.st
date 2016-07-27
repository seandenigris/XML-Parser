tests
testSubsetEndingEntityReplacement
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY % endOfSubset "]>">
					%endOfSubset;
					<root/>']
		raise: XMLParserException