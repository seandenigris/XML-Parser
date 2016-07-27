tests
testIsWhitespace
	| node |

	node := self nodeClass new.
	self deny: node isWhitespace.

	node string: self whitespaceCharacters.
	self assert: node isWhitespace.

	node append: 'non-space'.
	self deny: node isWhitespace.