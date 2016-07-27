tests
testp05pass1xml
	"Source file: oasis/p05pass1.xml"

	(self isSkippableTest: #testp05pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep05pass1xml
				documentURI: 'p05pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions