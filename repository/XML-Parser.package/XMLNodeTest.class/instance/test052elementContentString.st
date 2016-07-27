tests
test052elementContentString
	| element str |

	str := self markupString.
	(element := XMLElement new) contentString: str.
	self
		deny: element isEmpty;
		assert: element hasContents;
		assert: element contentString = str.

	"Intersperse between text"
	element addNode: XMLNode new.
	self
		assertElement: (element addContent: str)
		contentString: str
		contents: (Array with: str with: str).

	"addContent: should combine neighboring string nodes"
	self
		assertElement: (element addContent: (XMLStringNode string: str))
		contentString: str
		contents: (Array with: str with: str, str).

	element addElement: ((XMLElement named: 'foo') addContent: 'test').
	self assert: (element contentStringAt: 'foo') = 'test'.