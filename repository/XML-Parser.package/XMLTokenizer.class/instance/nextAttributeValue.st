tokenizing
nextAttributeValue
	| delimiterChar |

	delimiterChar := self expectQuote.
	^ streamWriter writeWith: [:writeStream |
		self nextPCDataDelimitedBy: delimiterChar putOn: writeStream.
		self expectNext: delimiterChar.
		writeStream stringContents]