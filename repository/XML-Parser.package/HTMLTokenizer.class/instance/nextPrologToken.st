tokenizing
nextPrologToken
	streamReader skipSeparators.
	streamReader peek == $<
		ifTrue: [super nextPrologToken]
		ifFalse: [
			context enterContent.
			self nextContentToken].