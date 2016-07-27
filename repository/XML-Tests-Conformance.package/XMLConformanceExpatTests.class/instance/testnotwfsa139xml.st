tests - exception raising
testnotwfsa139xml
	"Source file: xmltest/not-wf/sa/139.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa139xml
				documentURI: 'not-wf/sa/139.xml']
		raise: self parserExceptions