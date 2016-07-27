tests - exception raising
testp56fail4xml
	"Source file: oasis/p56fail4.xml"

	(self isSkippableTest: #testp56fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep56fail4xml
				documentURI: 'p56fail4.xml']
		raise: self parserExceptions