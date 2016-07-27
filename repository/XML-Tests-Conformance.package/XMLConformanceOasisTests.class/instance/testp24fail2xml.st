tests - exception raising
testp24fail2xml
	"Source file: oasis/p24fail2.xml"

	(self isSkippableTest: #testp24fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep24fail2xml
				documentURI: 'p24fail2.xml']
		raise: self parserExceptions