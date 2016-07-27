tests - exception raising
testp75fail3xml
	"Source file: oasis/p75fail3.xml"

	(self isSkippableTest: #testp75fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep75fail3xml
				documentURI: 'p75fail3.xml']
		raise: self parserExceptions