tests - exception raising
testnotwfsa042xml
	"Source file: xmltest/not-wf/sa/042.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa042xml
				documentURI: 'not-wf/sa/042.xml']
		raise: self parserExceptions