tests
test052elementContentString
	| element str |

	str := self markupString.
	(element := XMLElement new) contentString: str.
	self
		deny: element isEmpty;
		assert: element hasContent;
		assert: element contentString = str.

	"Intersperse between text"
	element addNode: XMLMockNode new.
	self
		assertElement: (element addContent: str)
		contentString: str, ' ', str
		contents: (Array with: str with: str).

	"addContent: should combine neighboring string nodes"
	self
		assertElement: (element addContent: (XMLString string: str))
		contentString: str, ' ', str, str
		contents: (Array with: str with: str, str).

	element addElement: ((XMLElement named: 'foo') addContent: 'test').
	self assert: (element contentStringAt: 'foo') = 'test'.