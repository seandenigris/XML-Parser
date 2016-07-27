private
writeIndent
	self currentIndentLevel timesRepeat: [self nextPutAll: self indentString]