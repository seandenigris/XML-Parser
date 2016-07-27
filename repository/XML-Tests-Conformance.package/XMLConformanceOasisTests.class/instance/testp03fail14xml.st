tests - exception raising
testp03fail14xml
	"Source file: oasis/p03fail14.xml"

	(self isSkippableTest: #testp03fail14xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail14xml
				documentURI: 'p03fail14.xml']
		raise: self parserExceptions