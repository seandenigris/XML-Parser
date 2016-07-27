tests - exception raising
testp11fail2xml
	"Source file: oasis/p11fail2.xml"

	(self isSkippableTest: #testp11fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep11fail2xml
				documentURI: 'p11fail2.xml']
		raise: self parserExceptions