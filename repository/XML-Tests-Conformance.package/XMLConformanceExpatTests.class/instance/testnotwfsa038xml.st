tests - exception raising
testnotwfsa038xml
	"Source file: xmltest/not-wf/sa/038.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa038xml
				documentURI: 'not-wf/sa/038.xml']
		raise: self parserExceptions