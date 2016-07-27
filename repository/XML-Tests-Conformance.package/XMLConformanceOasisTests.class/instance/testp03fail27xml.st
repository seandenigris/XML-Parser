tests - exception raising
testp03fail27xml
	"Source file: oasis/p03fail27.xml"

	(self isSkippableTest: #testp03fail27xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail27xml
				documentURI: 'p03fail27.xml']
		raise: self parserExceptions