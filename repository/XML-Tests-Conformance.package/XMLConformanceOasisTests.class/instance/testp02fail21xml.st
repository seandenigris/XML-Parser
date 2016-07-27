tests - exception raising
testp02fail21xml
	"Source file: oasis/p02fail21.xml"

	(self isSkippableTest: #testp02fail21xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail21xml
				documentURI: 'p02fail21.xml']
		raise: self parserExceptions