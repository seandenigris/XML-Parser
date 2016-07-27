tests - exception raising
testnotwfsa021xml
	"Source file: xmltest/not-wf/sa/021.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa021xml
				documentURI: 'not-wf/sa/021.xml']
		raise: self parserExceptions