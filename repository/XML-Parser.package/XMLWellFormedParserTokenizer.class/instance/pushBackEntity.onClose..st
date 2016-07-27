entity replacement
pushBackEntity: anEntity onClose: aBlock
	anEntity replacement
		ifEmpty: [
			aBlock ifNotNil: [aBlock value].
			^ self].

	self addActiveEntity: anEntity.
	streamReader
		pushStream: (ReadStream on: anEntity replacement)
		onClose: [
			self removeActiveEntity: anEntity.
			aBlock ifNotNil: [aBlock value]].

	anEntity isExternal
		ifTrue: [
			streamReader detectCurrentEncoding.
			(context := context textDeclarationContext)
				nextTokenFrom: self].