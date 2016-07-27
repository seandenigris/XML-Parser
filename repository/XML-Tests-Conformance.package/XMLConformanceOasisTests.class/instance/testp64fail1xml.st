tests - exception raising
testp64fail1xml
	"Source file: oasis/p64fail1.xml"

	(self isSkippableTest: #testp64fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep64fail1xml
				documentURI: 'p64fail1.xml']
		raise: self parserExceptions