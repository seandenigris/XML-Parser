tests - exception raising
testp75fail5xml
	"Source file: oasis/p75fail5.xml"

	(self isSkippableTest: #testp75fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep75fail5xml
				documentURI: 'p75fail5.xml']
		raise: self parserExceptions