tokenizing
nextGeneralEntityOrCharacterReferenceOnWriteStream
	"returns true if writeStream is written to, false otherwise"
	| generalEntity result |

	generalEntity := self topPushedBackEntity.
	result :=
		streamReader peek == $#
			ifTrue: [self nextCharacterReferenceOnWriteStream]
			ifFalse: [self nextGeneralEntityReferenceOnWriteStream].
	generalEntity
		ifNotNil: [
			(self pushedBackEntities includes: generalEntity)
				ifFalse: [
					self errorImproperGeneralEntityNesting]].
	^ result.