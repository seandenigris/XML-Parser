tests
testElementEmptyDeclaration
	self
		shouldnt: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]>',
				'<root> <!--empty--> <?pi data?> </root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE root [
					<!ELEMENT root EMPTY>
					<!ELEMENT non-empty ANY>]><root><non-empty/></root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]><root>non-empty</root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]><root>&#32;</root>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse: 
				'<!DOCTYPE root [<!ELEMENT root EMPTY>]><root><![CDATA[non-empty]]></root>']
		raise: XMLValidationException.