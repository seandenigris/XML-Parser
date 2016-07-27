entity replacing
pushBackEntity: anEntity onClose: aBlock
	anEntity hasReplacement
		ifTrue: [
			self addPushedBackEntity: anEntity.
			streamReader
				pushBackStream: anEntity replacementStream
				onClose: [
					self removePushedBackEntity: anEntity.
					aBlock
						ifNotNil: [aBlock value]].
			anEntity isExternal
				ifTrue: [self nextStartExternalEntity]]
		ifFalse: [
			aBlock
				ifNotNil: [aBlock value]]