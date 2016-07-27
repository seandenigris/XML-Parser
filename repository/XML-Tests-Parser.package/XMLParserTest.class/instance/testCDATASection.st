tests
testCDATASection
	| xmlDocument element output |

	xmlDocument :=
		(XMLDOMParser on: self exampleCDATASectionXML readStream)
			preservesCDataNodes: true;
			parseDocument.
	element := xmlDocument firstTagNamed: 'test-data'.

	self assert: element contentString = 'this is CDATA test content 1 < 2 & 5 > 3'.
	
	output := element printString.
	self assert: '<test-data><![CDATA[this is CDATA test content 1 < 2 & 5 > 3]]></test-data>' = output
	
