entity replacement
endReplacementForGeneralEntity: anEntity isInContent: aBoolean
	activeEntities remove: anEntity.
	aBoolean
		ifTrue: [driver handleEndContentEntityReplacement: anEntity name].