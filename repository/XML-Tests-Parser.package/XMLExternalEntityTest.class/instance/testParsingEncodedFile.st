tests
testParsingEncodedFile
	"This test creates/deletes a file so is skipped by default"
	| fileHandle doc docFromFile |

	self isSkipping
		ifTrue: [self skipOrReturnWith: [^ self]].

	fileHandle := self fileHandleForNewFileSuffixed: 'testParsingEncodedFile.xml'.
	doc := XMLDOMParser parse: self docBookArticleSource.
	doc
		encoding: 'UTF-16BE';
		printToFileNamed: fileHandle path.
	self
		shouldnt: [docFromFile := XMLDOMParser parseFileNamed: fileHandle path]
		raise: XMLFileException.
	self
		assert: docFromFile encoding = 'UTF-16BE';
		assert: doc printString = docFromFile printString.

	fileHandle delete.