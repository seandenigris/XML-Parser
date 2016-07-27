tests
testvalidelementxml
	"Source file: sun/valid/element.xml"

	(self isSkippableTest: #testvalidelementxml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		shouldnt: [
			[self
				parse: self class sourcevalidelementxml
				documentURI: 'valid/element.xml']
				on: self parserExceptions
				do: [:error |
					(self isSkippableException: error)
						ifTrue: [self skipOrReturnWith: [^ self]]
						ifFalse: [error pass]]]
		raise: self parserExceptions