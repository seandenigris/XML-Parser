tests
testDeclarationHandler
	| parser oldDeclarationHandler newDeclarationHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldDeclarationHandler := parser declarationHandler.
	self assert: (oldDeclarationHandler isKindOf: SAX2DeclarationHandler).

	newDeclarationHandler := SAX2DeclarationHandler new.
	self
		assert: (parser declarationHandler: newDeclarationHandler) == parser;
		assert: parser declarationHandler == newDeclarationHandler;
		assert: (parser declarationHandler: nil) == parser;
		assert: (parser declarationHandler isKindOf: SAX2DeclarationHandler).