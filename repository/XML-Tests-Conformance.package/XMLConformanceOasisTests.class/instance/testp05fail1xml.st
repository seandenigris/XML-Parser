tests - exception raising
testp05fail1xml
	"Source file: oasis/p05fail1.xml"

	(self isSkippableTest: #testp05fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep05fail1xml
				documentURI: 'p05fail1.xml']
		raise: self parserExceptions