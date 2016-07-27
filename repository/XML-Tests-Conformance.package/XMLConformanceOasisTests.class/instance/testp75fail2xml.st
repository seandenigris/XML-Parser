tests - exception raising
testp75fail2xml
	"Source file: oasis/p75fail2.xml"

	(self isSkippableTest: #testp75fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep75fail2xml
				documentURI: 'p75fail2.xml']
		raise: self parserExceptions