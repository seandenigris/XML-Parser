tests - exception raising
testp58fail8xml
	"Source file: oasis/p58fail8.xml"

	(self isSkippableTest: #testp58fail8xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep58fail8xml
				documentURI: 'p58fail8.xml']
		raise: self parserExceptions