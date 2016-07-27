entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	(self hasActiveEntityNamed: anEntity name)
		ifTrue: [self entityDepthError: 'Illegal self-referential entity ', anEntity asReference].

	(activeEntities size >= self maxEntityReplacementDepth)
		ifTrue: [self entityDepthError: 'Cannot further nest entity replacements'].

	super pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock.