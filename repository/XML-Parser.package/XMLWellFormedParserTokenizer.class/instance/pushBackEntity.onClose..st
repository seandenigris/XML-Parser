entity replacing
pushBackEntity: anEntity onClose: aBlock
	anEntity hasReplacement
		ifFalse: [
			aBlock ifNotNil: [aBlock value].
			^ self].

	self addActiveEntity: anEntity.
	streamReader
		pushBackStream: anEntity replacementStream
		onClose: [
			self removeActiveEntity: anEntity.
			aBlock ifNotNil: [aBlock value]].

	anEntity isExternal
		ifTrue: [
			streamReader detectCurrentEncoding.
			(context := context textDeclarationContext)
				nextTokenFrom: self].