tokenizing
nextAttributeValue
	| delimiterChar |

	delimiterChar := self expectQuote.
	buffer reset.
	self nextPCDataDelimitedBy: delimiterChar putOn: buffer.
	self expectNext: delimiterChar.

	^ buffer stringContents.