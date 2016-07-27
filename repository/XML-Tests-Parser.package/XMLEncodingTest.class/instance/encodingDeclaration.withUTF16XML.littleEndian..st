source
encodingDeclaration: anEncoding withUTF16XML: anXml littleEndian: aBoolean
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self toUTF16: '?>', anXml littleEndian: aBoolean)