tests - exception raising
testp42fail2xml
	"Source file: oasis/p42fail2.xml"

	(self isSkippableTest: #testp42fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep42fail2xml
				documentURI: 'p42fail2.xml']
		raise: self parserExceptions