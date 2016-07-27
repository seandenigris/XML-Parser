tests
testvalidoptionalxml
	"Source file: sun/valid/optional.xml"

	(self isSkippableTest: #testvalidoptionalxml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidoptionalxml
				documentURI: 'valid/optional.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions