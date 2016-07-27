tests
testReusingParser
	| parser oldConfiguraiton |

	parser :=
		SAXHandler
			on: self addressBookXML
			documentURI: 'oldURI'.
	oldConfiguraiton := parser configuration.
	parser parseDocument.
	parser on: self addressBookXMLWithDTD.
	self
		assert: parser input = self addressBookXMLWithDTD;
		deny: parser documentURI = 'oldURI';
		deny: parser configuration == oldConfiguraiton.