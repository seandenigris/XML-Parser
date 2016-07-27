tests - exception raising
testp43fail1xml
	"Source file: oasis/p43fail1.xml"

	(self isSkippableTest: #testp43fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep43fail1xml
				documentURI: 'p43fail1.xml']
		raise: self parserExceptions