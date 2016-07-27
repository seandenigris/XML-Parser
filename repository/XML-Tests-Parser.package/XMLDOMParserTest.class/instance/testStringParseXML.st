tests
testStringParseXML
	self assert:
		self addressBookXML parseXML printString =
			(XMLDOMParser parse: self addressBookXML) printString.

	self assert:
		self addressBookXMLWithDTD parseXML printString =
			(XMLDOMParser parse: self addressBookXMLWithDTD) printString.