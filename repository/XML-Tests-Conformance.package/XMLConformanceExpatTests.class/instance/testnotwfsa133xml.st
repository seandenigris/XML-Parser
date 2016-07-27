tests - exception raising
testnotwfsa133xml
	"Source file: xmltest/not-wf/sa/133.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa133xml
				documentURI: 'not-wf/sa/133.xml']
		raise: self parserExceptions