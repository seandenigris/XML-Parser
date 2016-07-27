tests - exception raising
testp03fail19xml
	"Source file: oasis/p03fail19.xml"

	(self isSkippableTest: #testp03fail19xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail19xml
				documentURI: 'p03fail19.xml']
		raise: self parserExceptions