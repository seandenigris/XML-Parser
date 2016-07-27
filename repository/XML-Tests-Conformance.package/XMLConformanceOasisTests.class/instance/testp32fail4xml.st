tests - exception raising
testp32fail4xml
	"Source file: oasis/p32fail4.xml"

	(self isSkippableTest: #testp32fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep32fail4xml
				documentURI: 'p32fail4.xml']
		raise: self parserExceptions