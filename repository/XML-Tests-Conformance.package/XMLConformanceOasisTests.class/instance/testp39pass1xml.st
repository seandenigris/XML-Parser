tests
testp39pass1xml
	"Source file: oasis/p39pass1.xml"

	(self isSkippableTest: #testp39pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep39pass1xml
				documentURI: 'p39pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions