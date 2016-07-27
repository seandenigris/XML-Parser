tokenizing
expectNextAll: aString
	aString doWithIndex: [:each :i |
		each == streamReader peek
			ifTrue: [streamReader next]
			ifFalse: [
				self nextName.
				^ aString]].
	^ aString.