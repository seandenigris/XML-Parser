entity replacing
pushBackEntity: anEntity onClose: aBlock
	anEntity hasReplacement
		ifFalse: [
			aBlock ifNotNil: [aBlock value].
			^ self].

	self addPushedBackEntity: anEntity.
	streamReader
		pushBackStream: anEntity replacementStream
		onClose: [
			self removePushedBackEntity: anEntity.
			aBlock ifNotNil: [aBlock value]].

	anEntity isExternal
		ifTrue: [
			streamReader detectCurrentEncoding.
			(context := context textDeclarationContext)
				nextTokenFrom: self].