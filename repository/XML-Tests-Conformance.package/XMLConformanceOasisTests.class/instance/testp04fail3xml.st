tests - exception raising
testp04fail3xml
	"Source file: oasis/p04fail3.xml"

	(self isSkippableTest: #testp04fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep04fail3xml
				documentURI: 'p04fail3.xml']
		raise: self parserExceptions