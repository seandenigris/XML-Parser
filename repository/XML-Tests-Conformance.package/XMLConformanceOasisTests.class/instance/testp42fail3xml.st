tests - exception raising
testp42fail3xml
	"Source file: oasis/p42fail3.xml"

	(self isSkippableTest: #testp42fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep42fail3xml
				documentURI: 'p42fail3.xml']
		raise: self parserExceptions