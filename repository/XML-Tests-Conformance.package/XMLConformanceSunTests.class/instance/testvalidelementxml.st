tests
testvalidelementxml
	"Source file: sun/valid/element.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidelementxml
				documentURI: 'valid/element.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error signal]]]
		raise: self parserExceptions