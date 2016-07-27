testing
atEnd
	state == #atEnd
		ifTrue: [^ true].
	(state ~~ #atStart and: [streamReader atEnd])
		ifTrue: [
			state := #atEnd.
			driver handleEndDocument.
			^ true].
	^ false.