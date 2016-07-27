source
encodingDeclaration: anEncoding withUTF32XML: anXml littleEndian: aBoolean
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self toUTF32: '?>', anXml littleEndian: aBoolean)