tests - exception raising
testp28fail1xml
	"Source file: oasis/p28fail1.xml"

	(self isSkippableTest: #testp28fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep28fail1xml
				documentURI: 'p28fail1.xml']
		raise: self parserExceptions