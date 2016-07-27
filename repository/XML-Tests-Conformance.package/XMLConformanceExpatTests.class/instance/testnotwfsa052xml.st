tests - exception raising
testnotwfsa052xml
	"Source file: xmltest/not-wf/sa/052.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa052xml
				documentURI: 'not-wf/sa/052.xml']
		raise: self parserExceptions