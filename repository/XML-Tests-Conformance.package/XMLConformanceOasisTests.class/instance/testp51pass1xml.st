tests
testp51pass1xml
	"Source file: oasis/p51pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep51pass1xml
				documentURI: 'p51pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions