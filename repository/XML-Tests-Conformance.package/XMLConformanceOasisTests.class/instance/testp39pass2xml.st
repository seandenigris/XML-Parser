tests
testp39pass2xml
	"Source file: oasis/p39pass2.xml"

	(self isSkippableTest: #testp39pass2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep39pass2xml
				documentURI: 'p39pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions