writing xml
xmlDeclaration: versionString encoding: encodingString
	self canonical
		ifFalse: [
			(self stream class == MultiByteFileStream) | (self stream class == MultiByteBinaryOrTextStream) ifTrue: [
			self stream converter: (TextConverter defaultConverterClassForEncoding: encodingString)
			].
			self
				startPI: 'xml';
				attribute: 'version' value: versionString;
				attribute: 'encoding' value: encodingString;
				endPI.
			self stream flush]