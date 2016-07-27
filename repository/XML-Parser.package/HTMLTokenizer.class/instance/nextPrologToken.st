tokenizing
nextPrologToken
	streamReader skipSeparators.
	streamReader peek == $<
		ifTrue: [
			streamReader next.
			streamReader peek == $?
				ifTrue: [^ self nextPIOrXMLDecl].
			streamReader peek == $!
				ifTrue: [
					streamReader next.
					streamReader peek == $-
						ifTrue: [^ self nextComment].
				^ self nextDocTypeDecl].

			context enterContent.
			^ (streamReader atEnd not and: [streamReader peek isSeparator])
				ifTrue: [
					streamReader pushBack: '<'.
					self nextContentToken]
				ifFalse: [self nextTag]].

	context enterContent.
	^ self nextContentToken.