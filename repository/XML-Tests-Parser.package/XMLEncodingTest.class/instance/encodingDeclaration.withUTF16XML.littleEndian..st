source
encodingDeclaration: anEncoding withUTF16XML: aSourceString littleEndian: aBoolean
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self toUTF16: '?>', aSourceString littleEndian: aBoolean)