tests
testp62pass1xml
	"Source file: oasis/p62pass1.xml"

	(self isSkippableTest: #testp62pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep62pass1xml
				documentURI: 'p62pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions