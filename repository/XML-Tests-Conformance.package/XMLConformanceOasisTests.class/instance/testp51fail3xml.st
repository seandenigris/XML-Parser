tests - exception raising
testp51fail3xml
	"Source file: oasis/p51fail3.xml"

	(self isSkippableTest: #testp51fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail3xml
				documentURI: 'p51fail3.xml']
		raise: self parserExceptions