tests - exception raising
testp23fail5xml
	"Source file: oasis/p23fail5.xml"

	(self isSkippableTest: #testp23fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep23fail5xml
				documentURI: 'p23fail5.xml']
		raise: self parserExceptions