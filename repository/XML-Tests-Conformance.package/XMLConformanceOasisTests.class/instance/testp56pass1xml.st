tests
testp56pass1xml
	"Source file: oasis/p56pass1.xml"

	(self isSkippableTest: #testp56pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep56pass1xml
				documentURI: 'p56pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions