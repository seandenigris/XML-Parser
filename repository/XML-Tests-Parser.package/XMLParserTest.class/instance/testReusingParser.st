tests
testReusingParser
	| parser oldConfiguraiton |

	parser := SAXHandler on: self addressBookXML.
	oldConfiguraiton := parser configuration.
	parser parseDocument.
	parser on: self addressBookXMLWithDTD.
	self assert: parser configuration == oldConfiguraiton.