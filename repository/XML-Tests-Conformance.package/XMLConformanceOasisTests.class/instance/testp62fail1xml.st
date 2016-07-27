tests - exception raising
testp62fail1xml
	"Source file: oasis/p62fail1.xml"

	(self isSkippableTest: #testp62fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep62fail1xml
				documentURI: 'p62fail1.xml']
		raise: self parserExceptions