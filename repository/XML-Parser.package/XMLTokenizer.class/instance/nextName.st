tokenizing
nextName
	^ streamWriter writeWith: [:writeStream |
		self nextNameOn: writeStream.
		writeStream contents]