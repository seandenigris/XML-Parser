tests
testParseXML
	| xml |

	xml := XMLParserTest addressBookXML.
	self assert: xml parseXML printString = (XMLDOMParser parse: xml) printString.
	self assert: '' parseXML printString = (XMLDOMParser parse: '') printString.