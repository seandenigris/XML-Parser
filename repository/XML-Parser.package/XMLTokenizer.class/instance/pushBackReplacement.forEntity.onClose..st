tokenizing
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	streamReader
		pushStream: aReplacement readStream
		from: anEntity uri
		onClose: aBlock.

	(anEntity isExternal and: [aReplacement notEmpty])
		ifTrue: [
			self
				checkTextDeclarationInReplacement: aReplacement
				forEntity: anEntity].