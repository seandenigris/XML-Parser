assertions
assertEntityDecl: anEntityDeclaration hasName: aName replacement: aReplacement publicID: aPublicId systemID: aSystemId ndada: anNdata
	| printString |

	self
		assert: anEntityDeclaration name = aName;
		assert: anEntityDeclaration replacement = aReplacement;
		assert: anEntityDeclaration publicID = aPublicId;
		assert: anEntityDeclaration systemID = aSystemId;
		assert: anEntityDeclaration ndata = anNdata.

	(printString := String new writeStream)
		nextPutAll: '<!ENTITY ';
		nextPutAll: aName;
		space.
	aReplacement
		ifNotEmpty: [
			printString
				nextPut: $";
				nextPutAll: aReplacement;
				nextPut: $"]
		ifEmpty: [
			self
				printExternalIDFromPublicID: aPublicId
				systemID: aSystemId
				on: printString.
			anNdata ifNotEmpty: [
				printString
					space;
					nextPutAll: 'NDATA';
					space;
					nextPutAll: anNdata]].
	printString nextPut: $>.

	self assert: anEntityDeclaration printString = printString contents.