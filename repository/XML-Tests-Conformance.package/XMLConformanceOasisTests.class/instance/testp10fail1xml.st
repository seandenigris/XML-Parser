tests - exception raising
testp10fail1xml
	"Source file: oasis/p10fail1.xml"

	(self isSkippableTest: #testp10fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep10fail1xml
				documentURI: 'p10fail1.xml']
		raise: self parserExceptions