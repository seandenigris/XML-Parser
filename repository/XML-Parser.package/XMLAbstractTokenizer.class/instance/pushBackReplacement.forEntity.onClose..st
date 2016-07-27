entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	(self hasActiveEntityNamed: anEntity name)
		ifTrue: [self entityError: 'Illegal self-referential entity ', anEntity asReference].
	(activeEntities size >= self maxEntityReplacementDepth)
		ifTrue: [self entityError: 'Cannot further nest entity replacements'].

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