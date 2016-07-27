source
encodingDeclaration: anEncoding withUTF32XML: aSourceString littleEndian: aBoolean
	^ ((self encodingDeclaration: anEncoding) allButLast: 2),
		(self toUTF32: '?>', aSourceString littleEndian: aBoolean)