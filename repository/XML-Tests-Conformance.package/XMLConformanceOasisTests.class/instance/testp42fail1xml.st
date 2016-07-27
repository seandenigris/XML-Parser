tests - exception raising
testp42fail1xml
	"Source file: oasis/p42fail1.xml"

	(self isSkippableTest: #testp42fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep42fail1xml
				documentURI: 'p42fail1.xml']
		raise: self parserExceptions