tests
testp59pass1xml
	"Source file: oasis/p59pass1.xml"

	(self isSkippableTest: #testp59pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep59pass1xml
				documentURI: 'p59pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions