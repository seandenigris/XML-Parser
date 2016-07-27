tests - exception raising
testp02fail14xml
	"Source file: oasis/p02fail14.xml"

	(self isSkippableTest: #testp02fail14xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail14xml
				documentURI: 'p02fail14.xml']
		raise: self parserExceptions