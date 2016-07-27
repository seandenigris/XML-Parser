tests - exception raising
testnotwfsa137xml
	"Source file: xmltest/not-wf/sa/137.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa137xml
				documentURI: 'not-wf/sa/137.xml']
		raise: self parserExceptions