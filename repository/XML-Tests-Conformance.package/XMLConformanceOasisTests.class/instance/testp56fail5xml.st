tests - exception raising
testp56fail5xml
	"Source file: oasis/p56fail5.xml"

	(self isSkippableTest: #testp56fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep56fail5xml
				documentURI: 'p56fail5.xml']
		raise: self parserExceptions