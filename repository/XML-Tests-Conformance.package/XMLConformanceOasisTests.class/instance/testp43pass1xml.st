tests
testp43pass1xml
	"Source file: oasis/p43pass1.xml"

	(self isSkippableTest: #testp43pass1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcep43pass1xml
				documentURI: 'p43pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions