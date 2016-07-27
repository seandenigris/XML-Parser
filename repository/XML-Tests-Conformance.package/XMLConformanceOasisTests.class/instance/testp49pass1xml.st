tests
testp49pass1xml
	"Source file: oasis/p49pass1.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcep49pass1xml
				documentURI: 'p49pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions