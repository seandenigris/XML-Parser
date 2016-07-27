tests - exception raising
testp68fail1xml
	"Source file: oasis/p68fail1.xml"

	(self isSkippableTest: #testp68fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep68fail1xml
				documentURI: 'p68fail1.xml']
		raise: self parserExceptions