entity replacement
endReplacementForGeneralEntity: anEntity isInContent: aBoolean
	self removeActiveEntity: anEntity.
	aBoolean
		ifTrue: [driver handleEndContentEntityReplacement: anEntity name].