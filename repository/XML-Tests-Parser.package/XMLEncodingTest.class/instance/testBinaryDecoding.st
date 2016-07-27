tests
testBinaryDecoding
	| xml binaryXml |
	
	xml := XMLParserTest addressBookXML.
	binaryXml := xml asArray collect: [:each | each asciiValue].
	self assert:
		(XMLDOMParser parse: binaryXml) printString =
			(XMLDOMParser parse: xml) printString.