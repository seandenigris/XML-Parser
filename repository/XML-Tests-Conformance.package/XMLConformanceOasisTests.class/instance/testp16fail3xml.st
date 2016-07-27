tests - exception raising
testp16fail3xml
	"Source file: oasis/p16fail3.xml"

	(self isSkippableTest: #testp16fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep16fail3xml
				documentURI: 'p16fail3.xml']
		raise: self parserExceptions