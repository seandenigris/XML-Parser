tests - exception raising
testp03fail26xml
	"Source file: oasis/p03fail26.xml"

	(self isSkippableTest: #testp03fail26xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail26xml
				documentURI: 'p03fail26.xml']
		raise: self parserExceptions