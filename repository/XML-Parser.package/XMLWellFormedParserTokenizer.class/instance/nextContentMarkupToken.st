tokenizing
nextContentMarkupToken
	| generalEntity |

	generalEntity := self topPushedBackEntity.
	streamReader peek == $?
		ifTrue: [self nextPI]
		ifFalse: [
			streamReader peek == $!
				ifTrue: [
					streamReader next.
					streamReader peek == $-
						ifTrue: [self nextComment]
						ifFalse: [self nextCDataSection]]
				ifFalse: [self nextTag]].
	generalEntity
		ifNotNil: [
			self topPushedBackEntity == generalEntity
				ifFalse: [self errorImproperGeneralEntityNesting]].