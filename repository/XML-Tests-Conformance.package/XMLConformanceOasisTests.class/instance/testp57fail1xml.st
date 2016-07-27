tests - exception raising
testp57fail1xml
	"Source file: oasis/p57fail1.xml"

	(self isSkippableTest: #testp57fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep57fail1xml
				documentURI: 'p57fail1.xml']
		raise: self parserExceptions