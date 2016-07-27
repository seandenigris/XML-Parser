tests - exception raising
testp63fail2xml
	"Source file: oasis/p63fail2.xml"

	(self isSkippableTest: #testp63fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep63fail2xml
				documentURI: 'p63fail2.xml']
		raise: self parserExceptions