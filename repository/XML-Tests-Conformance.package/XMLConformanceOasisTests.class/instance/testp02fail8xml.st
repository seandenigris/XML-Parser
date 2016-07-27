tests - exception raising
testp02fail8xml
	"Source file: oasis/p02fail8.xml"

	(self isSkippableTest: #testp02fail8xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail8xml
				documentURI: 'p02fail8.xml']
		raise: self parserExceptions