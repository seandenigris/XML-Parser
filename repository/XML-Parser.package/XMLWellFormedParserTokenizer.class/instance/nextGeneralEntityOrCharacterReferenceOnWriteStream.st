tokenizing
nextGeneralEntityOrCharacterReferenceOnWriteStream
	"returns the (first) character written to 'writeStream' if any, nil otherwise"
	| generalEntity result |

	generalEntity := self topPushedBackEntity.
	result :=
		streamReader peek == $#
			ifTrue: [self nextCharacterReferenceOnWriteStream]
			ifFalse: [self nextGeneralEntityReferenceOnWriteStream].
	generalEntity
		ifNotNil: [
			(self pushedBackEntities includes: generalEntity)
				ifFalse: [self errorImproperGeneralEntityNesting]].
	^ result.