tests
testRecursiveGeneralEntityReplacement
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY first "&second;">
					<!ENTITY second "&third;">
					<!ENTITY third "last">]>
				<root>&first;</root>']
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ENTITY first "&second;">
					<!ENTITY second "&third;">
					<!ENTITY third "&fourth;">
					<!ENTITY fourth "last">]>
				<root>&first;</root>']
		raise: XMLParserException.