tests
testBinaryDecoding
	| xml xmlInBinary |
	
	xml := XMLParserTest addressBookXML.
	xmlInBinary := xml asArray collect: [:each | each asciiValue].
	self assert:
		(XMLDOMParser parse: xmlInBinary) printString =
			(XMLDOMParser parse: xml) printString.