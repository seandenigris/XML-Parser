tests-utf8
testDecodingCharacters
	| xmlDocument element |

	xmlDocument := XMLDOMParser parseDocumentFrom: self exampleEncodedXML readStream.
	element := xmlDocument firstTagNamed: #'test-data'.

	self assert: element contentString first charCode = 8230.	
	self assert: element contentString first leadingChar = 255.	
	self assert: element contentString first codePoint = 1069555750