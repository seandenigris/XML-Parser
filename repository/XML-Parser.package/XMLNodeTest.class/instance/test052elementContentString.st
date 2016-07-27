tests
test052elementContentString
	| element str |

	str := self markupString.
	(element := XMLElement new) contentString: str.
	self
		assert: element hasChildren;
		assert: element hasContentNodes;
		assert: element hasStringNodes;
		assert: element contentString = str.

	"Intersperse between text"
	element addNode: XMLMockNode new.
	self
		assertElement: (element addContent: str)
		hasContentString: str, ' ', str
		withStrings: (Array with: str with: str).

	"addContent: should combine neighboring string nodes"
	self
		assertElement: (element addContent: (XMLString string: str))
		hasContentString: str, ' ', str, str
		withStrings: (Array with: str with: str, str).

	element addElement: ((XMLElement named: 'foo') addContent: 'test').
	self assert: (element contentStringAt: 'foo') = 'test'.