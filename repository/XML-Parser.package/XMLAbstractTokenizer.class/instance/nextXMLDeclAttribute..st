tokenizing
nextXMLDeclAttribute: aName
	| quote |

	streamReader skipSeparators.
	streamReader peek == $?
		ifTrue: [^ ''].

	self expectNextAll: aName.
	streamReader skipSeparators.
	self expectNext: $=.
	streamReader skipSeparators.

	quote := self expectQuote.
	^ streamReader upTo: quote.