tests
testvalidsa076xml
	"Source file: xmltest/valid/sa/076.xml"

	(self isSkippableTest: #testvalidsa076xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa076xml
				documentURI: 'valid/sa/076.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions