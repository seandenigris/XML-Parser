tests - exception raising
testp23fail3xml
	"Source file: oasis/p23fail3.xml"

	(self isSkippableTest: #testp23fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep23fail3xml
				documentURI: 'p23fail3.xml']
		raise: self parserExceptions