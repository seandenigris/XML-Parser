tests - exception raising
testnotwfsa141xml
	"Source file: xmltest/not-wf/sa/141.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa141xml
				documentURI: 'not-wf/sa/141.xml']
		raise: self parserExceptions