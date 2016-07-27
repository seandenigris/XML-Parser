tests
testvalidsa022xml
	"Source file: xmltest/valid/sa/022.xml"

	(self isSkippableTest: #testvalidsa022xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa022xml
				documentURI: 'valid/sa/022.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions