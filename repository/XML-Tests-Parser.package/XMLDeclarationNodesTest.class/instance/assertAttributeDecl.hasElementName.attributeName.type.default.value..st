assertions
assertAttributeDecl: anAttributeDeclaration hasElementName: anElementName attributeName: anAttributeName type: aType default: aDefaultPragma value: aDefaultValue
	| printString |

	self
		assert: anAttributeDeclaration element = anElementName;
		assert: anAttributeDeclaration attribute = anAttributeName;
		assert: anAttributeDeclaration type = aType;
		assert: anAttributeDeclaration defaultPragma = aDefaultPragma;
		assert: anAttributeDeclaration defaultValue = aDefaultValue.

	(printString := String new writeStream)
		nextPutAll: '<!ATTLIST';
		space;
		nextPutAll: anElementName;
		space;
		nextPutAll: anAttributeName;
		space;
		nextPutAll: aType.

	aDefaultPragma ifNotEmpty: [
		printString
			space;
			nextPutAll: (aDefaultPragma copyWithFirst: $#)].

	aDefaultValue ifNotEmpty: [
		printString
			space;
			nextPut: $";
			nextPutAll: aDefaultValue;
			nextPut: $"].

	printString nextPut: $>.
		
	self assert: anAttributeDeclaration printString = printString contents.