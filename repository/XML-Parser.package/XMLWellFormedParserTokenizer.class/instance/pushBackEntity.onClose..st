entity replacement
pushBackEntity: anEntity onClose: aBlock
	anEntity replacement
		ifEmpty: [^ aBlock value].

	streamReader
		pushStream: (ReadStream on: anEntity replacement)
		onClose: aBlock.
	anEntity isExternal
		ifTrue: [
			streamReader detectCurrentEncoding.
			(context := context textDeclarationContext)
				nextTokenFrom: self].