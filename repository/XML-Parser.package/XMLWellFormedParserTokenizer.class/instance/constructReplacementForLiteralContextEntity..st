entity replacement
constructReplacementForLiteralContextEntity: anEntity
	anEntity replacement
		ifEmpty: [^ self].

	self addActiveEntity: anEntity.
	streamReader
		pushStream: (ReadStream on: anEntity replacement)
		onClose: [
			streamReader isEscapingQuotes: false.
			self removeActiveEntity: anEntity].
	anEntity isExternal
		ifTrue: [
			streamReader detectCurrentEncoding.
			(context := context textDeclarationContext)
				nextTokenFrom: self].

	self currentActiveEntity == anEntity
		ifTrue: [streamReader isEscapingQuotes: true].