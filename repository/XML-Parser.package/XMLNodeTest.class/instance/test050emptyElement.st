tests
test050emptyElement
	| element |

	element := XMLElement new.
	self
		assert: element isElement & element isContentNode;
		deny: element hasAttributes;
		deny: element hasContentNodes;
		assert: element contentNodes isEmpty;
		assert: element stringNodes isEmpty.