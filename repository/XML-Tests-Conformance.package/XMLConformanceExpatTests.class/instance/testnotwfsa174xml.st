tests - exception raising
testnotwfsa174xml
	"Source file: xmltest/not-wf/sa/174.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa174xml
				documentURI: 'not-wf/sa/174.xml']
		raise: self parserExceptions