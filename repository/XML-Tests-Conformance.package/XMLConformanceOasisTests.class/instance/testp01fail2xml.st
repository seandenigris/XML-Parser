tests - exception raising
testp01fail2xml
	"Source file: oasis/p01fail2.xml"

	(self isSkippableTest: #testp01fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep01fail2xml
				documentURI: 'p01fail2.xml']
		raise: self parserExceptions