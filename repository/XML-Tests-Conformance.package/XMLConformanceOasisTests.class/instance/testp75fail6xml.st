tests - exception raising
testp75fail6xml
	"Source file: oasis/p75fail6.xml"

	(self isSkippableTest: #testp75fail6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep75fail6xml
				documentURI: 'p75fail6.xml']
		raise: self parserExceptions