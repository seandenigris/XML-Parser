assertions
assertAttributeDecl: anAttributeDeclaration hasElementName: anElementName attributeName: anAttributeName type: aType defaultDecl: aDefaultDeclaration
	| printString |

	self
		assert: anAttributeDeclaration element = anElementName;
		assert: anAttributeDeclaration attribute = anAttributeName;
		assert: anAttributeDeclaration type = aType;
		assert: anAttributeDeclaration defaultDeclaration = aDefaultDeclaration.

	(printString := String new writeStream)
		nextPutAll: '<!ATTLIST';
		space;
		nextPutAll: anElementName;
		space;
		nextPutAll: anAttributeName;
		space;
		nextPutAll: aType.
	aDefaultDeclaration ifNotEmpty: [
		printString
			space;
			nextPutAll: aDefaultDeclaration].
	printString nextPut: $>.
		
	self assert: anAttributeDeclaration printString = printString contents.