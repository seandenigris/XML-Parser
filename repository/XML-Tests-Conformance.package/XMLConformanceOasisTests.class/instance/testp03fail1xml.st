tests - exception raising
testp03fail1xml
	"Source file: oasis/p03fail1.xml"

	(self isSkippableTest: #testp03fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail1xml
				documentURI: 'p03fail1.xml']
		raise: self parserExceptions