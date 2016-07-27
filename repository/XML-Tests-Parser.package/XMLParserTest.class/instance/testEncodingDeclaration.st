tests - encoding
testEncodingDeclaration
	| xml utf8Xml latin1Xml |

	xml :=
		'<?xml version="1.0" encoding="{1}"?><root>',
		(String with: (Character value: 153) with: (Character value: 79)),
		'</root>'.
	utf8Xml := xml format: (Array with: 'UTF-8').
	latin1Xml := xml format: (Array with: 'ISO-8859-1').
	self
		should: [SAXHandler parse: (self convertableStreamOn: utf8Xml)]
		raise: Error.
	self
		shouldnt: [SAXHandler parse: (self convertableStreamOn: latin1Xml)]
		raise: Error.