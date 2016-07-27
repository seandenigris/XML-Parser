tests - exception raising
testp40fail2xml
	"Source file: oasis/p40fail2.xml"

	(self isSkippableTest: #testp40fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep40fail2xml
				documentURI: 'p40fail2.xml']
		raise: self parserExceptions