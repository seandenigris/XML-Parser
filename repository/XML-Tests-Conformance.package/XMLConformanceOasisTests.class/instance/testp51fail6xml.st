tests - exception raising
testp51fail6xml
	"Source file: oasis/p51fail6.xml"

	(self isSkippableTest: #testp51fail6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail6xml
				documentURI: 'p51fail6.xml']
		raise: self parserExceptions