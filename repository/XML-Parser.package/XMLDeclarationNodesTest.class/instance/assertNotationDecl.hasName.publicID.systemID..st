assertions
assertNotationDecl: aNotationDeclaration hasName: aName publicID: aPublicId systemID: aSystemId
	| printString |

	self
		assert: aNotationDeclaration name = aName;
		assert: aNotationDeclaration publicID = aPublicId;
		assert: aNotationDeclaration systemID = aSystemId.

	(printString := String new writeStream)
		nextPutAll: '<!NOTATION';
		space;
		nextPutAll: aName;
		space.
	self
		printExternalIDFromPublicID: aPublicId
		systemID: aSystemId
		on: printString.
	printString nextPut: $>.

	self assert: aNotationDeclaration printString = printString contents.