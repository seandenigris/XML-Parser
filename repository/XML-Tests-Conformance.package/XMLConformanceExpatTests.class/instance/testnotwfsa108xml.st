tests - exception raising
testnotwfsa108xml
	"Source file: xmltest/not-wf/sa/108.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa108xml
				documentURI: 'not-wf/sa/108.xml']
		raise: self parserExceptions