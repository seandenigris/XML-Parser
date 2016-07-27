tests
testElementAnyAndEmptyDeclarations
	XMLDOMParser parse: 
		'<!DOCTYPE addressbook [<!ELEMENT addressbook ANY>]>',
		self addressBookXML.
	self
		should: [
			XMLDOMParser parse: 
				'<!DOCTYPE addressbook [<!ELEMENT addressbook EMPTY>]>',
				self addressBookXML]
		raise: XMLValidationException