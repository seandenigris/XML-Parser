tests - exception raising
testp25fail1xml
	"Source file: oasis/p25fail1.xml"

	(self isSkippableTest: #testp25fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep25fail1xml
				documentURI: 'p25fail1.xml']
		raise: self parserExceptions