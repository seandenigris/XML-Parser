tests
testvalidsa017axml
	"Source file: xmltest/valid/sa/017a.xml"

	(self isSkippableTest: #testvalidsa017axml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa017axml
				documentURI: 'valid/sa/017a.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions