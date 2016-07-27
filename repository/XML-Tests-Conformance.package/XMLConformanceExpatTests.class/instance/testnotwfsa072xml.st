tests - exception raising
testnotwfsa072xml
	"Source file: xmltest/not-wf/sa/072.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa072xml
				documentURI: 'not-wf/sa/072.xml']
		raise: self parserExceptions