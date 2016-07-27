tests - exception raising
testp59fail1xml
	"Source file: oasis/p59fail1.xml"

	(self isSkippableTest: #testp59fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep59fail1xml
				documentURI: 'p59fail1.xml']
		raise: self parserExceptions