tests - exception raising
testp76fail2xml
	"Source file: oasis/p76fail2.xml"

	(self isSkippableTest: #testp76fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep76fail2xml
				documentURI: 'p76fail2.xml']
		raise: self parserExceptions