tests - exception raising
testp14fail1xml
	"Source file: oasis/p14fail1.xml"

	(self isSkippableTest: #testp14fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep14fail1xml
				documentURI: 'p14fail1.xml']
		raise: self parserExceptions