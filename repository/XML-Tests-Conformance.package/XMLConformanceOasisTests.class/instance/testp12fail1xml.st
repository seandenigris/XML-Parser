tests - exception raising
testp12fail1xml
	"Source file: oasis/p12fail1.xml"

	(self isSkippableTest: #testp12fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep12fail1xml
				documentURI: 'p12fail1.xml']
		raise: self parserExceptions