tests - exception raising
testp69fail3xml
	"Source file: oasis/p69fail3.xml"

	(self isSkippableTest: #testp69fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep69fail3xml
				documentURI: 'p69fail3.xml']
		raise: self parserExceptions