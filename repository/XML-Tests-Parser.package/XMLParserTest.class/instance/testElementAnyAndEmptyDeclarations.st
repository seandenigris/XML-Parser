tests
testElementAnyAndEmptyDeclarations
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ELEMENT two ANY>]>
				<root>one<two>three</two>four</root>']
		raise: XMLValidationException.
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]><root> <!--empty--> </root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]><root><non-empty/></root>']
		raise: XMLValidationException.