tests
testvalidoptionalxml
	"Source file: sun/valid/optional.xml"

	self
		shouldnt: [
			[self
				parse: self class sourcevalidoptionalxml
				documentURI: 'valid/optional.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skip]
						ifFalse: [error pass]]]
		raise: self parserExceptions