tests - exception raising
testnotwfdtd07xml
	"Source file: sun/not-wf/dtd07.xml"

	self
		should: [
			self
				parse: self class sourcenotwfdtd07xml
				documentURI: 'not-wf/dtd07.xml']
		raise: self exceptionClass