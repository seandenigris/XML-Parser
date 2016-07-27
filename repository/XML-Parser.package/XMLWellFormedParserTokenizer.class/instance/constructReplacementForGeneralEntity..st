entity replacing
constructReplacementForGeneralEntity: anEntity
	context isLiteralValueContext
		ifTrue: [
			anEntity isExternal
				ifTrue: [self errorLiteralContextExternalEntity: anEntity].
			self constructReplacementForLiteralContextEntity: anEntity]
		ifFalse: [
			driver handleStartContentEntityReplacement: anEntity name.
			self
				pushBackEntity: anEntity
				onClose: [driver handleEndContentEntityReplacement: anEntity name]]