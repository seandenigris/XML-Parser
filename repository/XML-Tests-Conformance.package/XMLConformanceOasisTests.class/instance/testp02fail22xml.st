tests - exception raising
testp02fail22xml
	"Source file: oasis/p02fail22.xml"

	(self isSkippableTest: #testp02fail22xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail22xml
				documentURI: 'p02fail22.xml']
		raise: self parserExceptions