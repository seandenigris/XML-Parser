tests - exception raising
testp56fail1xml
	"Source file: oasis/p56fail1.xml"

	(self isSkippableTest: #testp56fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep56fail1xml
				documentURI: 'p56fail1.xml']
		raise: self parserExceptions