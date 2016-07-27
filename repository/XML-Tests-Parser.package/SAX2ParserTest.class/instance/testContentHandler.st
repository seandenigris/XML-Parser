tests
testContentHandler
	| parser oldContentHandler newContentHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldContentHandler := parser contentHandler.
	self assert: (oldContentHandler isKindOf: SAX2ContentHandler).

	newContentHandler := SAX2ContentHandler new.
	self
		assert: (parser contentHandler: newContentHandler) == parser;
		assert: parser contentHandler == newContentHandler;
		assert: (parser contentHandler: nil) == parser;
		assert: (parser contentHandler isKindOf: SAX2ContentHandler).