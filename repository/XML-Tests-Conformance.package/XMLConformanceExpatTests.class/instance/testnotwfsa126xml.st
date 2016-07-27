tests - exception raising
testnotwfsa126xml
	"Source file: xmltest/not-wf/sa/126.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa126xml
				documentURI: 'not-wf/sa/126.xml']
		raise: self parserExceptions