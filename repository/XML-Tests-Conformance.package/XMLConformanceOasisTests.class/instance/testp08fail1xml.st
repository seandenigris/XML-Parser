tests - exception raising
testp08fail1xml
	"Source file: oasis/p08fail1.xml"

	(self isSkippableTest: #testp08fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep08fail1xml
				documentURI: 'p08fail1.xml']
		raise: self parserExceptions