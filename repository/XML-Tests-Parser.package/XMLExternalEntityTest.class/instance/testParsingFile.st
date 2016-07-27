tests
testParsingFile
	"This test creates/deletes a file so is skipped by default
	(self isSkipping: false) testParsingFile
	"
	| fileName doc |

	self isSkipping
		ifTrue: [self skip].

	fileName := 'testParsingFile.xml'.
	self
		should: [XMLDOMParser parseFileNamed: fileName]
		raise: XMLFileException.
	self
		fileNamed: fileName
		write: self sourceXML.
	self
		shouldnt: [doc := XMLDOMParser parseFileNamed: fileName]
		raise: XMLFileException.
	self assert: (doc root isNamed: 'score-partwise').

	self deleteFileNamed: fileName.