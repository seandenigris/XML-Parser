tests
testLexicalHandler
	| parser oldLexicalHandler newLexicalHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldLexicalHandler := parser lexicalHandler.
	self assert: (oldLexicalHandler isKindOf: SAX2LexicalHandler).

	newLexicalHandler := SAX2LexicalHandler new.
	self
		assert: (parser lexicalHandler: newLexicalHandler) == parser;
		assert: parser lexicalHandler == newLexicalHandler;
		assert: (parser lexicalHandler: nil) == parser;
		assert: (parser lexicalHandler isKindOf: SAX2LexicalHandler).