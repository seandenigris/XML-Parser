tests - exception raising
testp51fail4xml
	"Source file: oasis/p51fail4.xml"

	(self isSkippableTest: #testp51fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail4xml
				documentURI: 'p51fail4.xml']
		raise: self parserExceptions