tests - exception raising
testp53fail4xml
	"Source file: oasis/p53fail4.xml"

	(self isSkippableTest: #testp53fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep53fail4xml
				documentURI: 'p53fail4.xml']
		raise: self parserExceptions