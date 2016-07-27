tests
testp06pass1xml
	"Source file: oasis/p06pass1.xml"

	(self isSkippableTest: #testp06pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep06pass1xml
				documentURI: 'p06pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions