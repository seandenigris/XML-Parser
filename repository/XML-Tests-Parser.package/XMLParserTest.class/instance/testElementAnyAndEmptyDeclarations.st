tests
testElementAnyAndEmptyDeclarations
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE addressbook [<!ELEMENT addressbook ANY>]>',
				self addressBookXML]
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE addressbook [<!ELEMENT addressbook EMPTY>]>',
				self addressBookXML]
		raise: XMLValidationException