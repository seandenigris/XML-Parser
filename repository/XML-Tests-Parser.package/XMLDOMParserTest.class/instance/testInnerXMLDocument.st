tests
testInnerXMLDocument
	| document |

	document := XMLDOMParser parse: self addressBookXMLWithDTD.
	self
		assert: ((document innerXML: '<new-root/>') root isNamed: 'new-root');
		assert: document innerXML = '<new-root />';
		assert: ((document root innerXML: 'test') contentString = 'test');
		assert: document root innerXML = 'test';
		assert:
			(document innerXML: self addressBookXMLWithDTD) printString =
				(XMLDOMParser parse: self addressBookXMLWithDTD) printString.
	self
		should: [document innerXML: '<root1/><root2/>']
		raise: XMLWellFormednessException.