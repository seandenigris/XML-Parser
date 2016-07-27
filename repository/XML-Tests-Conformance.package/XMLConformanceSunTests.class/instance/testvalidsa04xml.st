tests
testvalidsa04xml
	"Source file: sun/valid/sa04.xml"

	(self isSkippableTest: #testvalidsa04xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidsa04xml
				documentURI: 'valid/sa04.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions