tests - exception raising
testp53fail5xml
	"Source file: oasis/p53fail5.xml"

	(self isSkippableTest: #testp53fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep53fail5xml
				documentURI: 'p53fail5.xml']
		raise: self parserExceptions