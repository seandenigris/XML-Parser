tests - exception raising
testp41fail3xml
	"Source file: oasis/p41fail3.xml"

	(self isSkippableTest: #testp41fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep41fail3xml
				documentURI: 'p41fail3.xml']
		raise: self parserExceptions