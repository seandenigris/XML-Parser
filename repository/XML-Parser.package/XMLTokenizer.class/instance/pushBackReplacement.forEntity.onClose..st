entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	(self hasActiveEntityNamed: anEntity name)
		ifTrue: [self parseError: 'Illegal self-referential entity ', anEntity asReference].
	(self activeEntities size >= self maxEntityReplacementDepth)
		ifTrue: [self entityDepthError: 'Cannot further nest entity replacements'].

	self addActiveEntity: anEntity.
	streamReader
		pushStream: aReplacement readStream
		onClose: aBlock.

	anEntity isExternal
		ifTrue: [
			self
				checkTextDeclarationInReplacement: aReplacement
				forEntity: anEntity].