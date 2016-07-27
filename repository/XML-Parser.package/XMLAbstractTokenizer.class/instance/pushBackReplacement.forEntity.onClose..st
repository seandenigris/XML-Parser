entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	activeEntities addLast: anEntity.
	streamReader
		pushStream: aReplacement readStream
		from: anEntity uri
		onClose: aBlock.

	anEntity isExternal
		ifTrue: [
			self
				checkTextDeclarationInReplacement: aReplacement
				forEntity: anEntity].