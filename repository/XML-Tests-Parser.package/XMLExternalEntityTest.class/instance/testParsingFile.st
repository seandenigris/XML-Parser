tests
testParsingFile
	"This test creates/deletes a file so is skipped by default"
	| fileHandle doc |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	fileHandle := self fileHandleForNewFileSuffixed: 'testParsingFile.xml'.
	self
		should: [XMLDOMParser parseFileNamed: fileHandle path]
		raise: XMLFileException.

	fileHandle writeStreamDo: [:writeStream |
		writeStream nextPutAll: self musicXMLDocument].
	self
		shouldnt: [doc := XMLDOMParser parseFileNamed: fileHandle path]
		raise: XMLFileException.
	self assert: (doc root isNamed: 'score-partwise').

	fileHandle delete.