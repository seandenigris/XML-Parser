tests - exception raising
testnotwfsa154xml
	"Source file: xmltest/not-wf/sa/154.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa154xml
				documentURI: 'not-wf/sa/154.xml']
		raise: self parserExceptions