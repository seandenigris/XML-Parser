tests - exception raising
testp51fail7xml
	"Source file: oasis/p51fail7.xml"

	(self isSkippableTest: #testp51fail7xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep51fail7xml
				documentURI: 'p51fail7.xml']
		raise: self parserExceptions