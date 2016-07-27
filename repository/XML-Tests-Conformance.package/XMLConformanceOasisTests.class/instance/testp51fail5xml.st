tests - exception raising
testp51fail5xml
	"Source file: oasis/p51fail5.xml"

	(self isSkippableTest: #testp51fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail5xml
				documentURI: 'p51fail5.xml']
		raise: self parserExceptions