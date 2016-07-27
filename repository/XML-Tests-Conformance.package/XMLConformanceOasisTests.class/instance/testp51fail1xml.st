tests - exception raising
testp51fail1xml
	"Source file: oasis/p51fail1.xml"

	(self isSkippableTest: #testp51fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail1xml
				documentURI: 'p51fail1.xml']
		raise: self parserExceptions