entity replacement
pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock
	((self hasActiveEntityNamed: anEntity name)
		or: [activeEntities size >= self maxEntityReplacementDepth])
		ifTrue: [^ self].

	super pushBackReplacement: aReplacement forEntity: anEntity onClose: aBlock.