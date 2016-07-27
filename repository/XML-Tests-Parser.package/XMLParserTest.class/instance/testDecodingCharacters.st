tests-utf8
testDecodingCharacters
	| xmlDocument element |

	xmlDocument := XMLDOMParser parse: self exampleEncodedXML.
	element := xmlDocument firstTagNamed: 'test-data'.

	self assert: element contentString first charCode = 8230.	

