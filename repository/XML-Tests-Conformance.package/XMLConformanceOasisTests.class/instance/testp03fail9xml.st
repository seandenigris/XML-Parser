tests - exception raising
testp03fail9xml
	"Source file: oasis/p03fail9.xml"

	(self isSkippableTest: #testp03fail9xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail9xml
				documentURI: 'p03fail9.xml']
		raise: self parserExceptions