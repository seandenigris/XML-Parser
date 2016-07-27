tests - exception raising
testp48fail1xml
	"Source file: oasis/p48fail1.xml"

	(self isSkippableTest: #testp48fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep48fail1xml
				documentURI: 'p48fail1.xml']
		raise: self parserExceptions