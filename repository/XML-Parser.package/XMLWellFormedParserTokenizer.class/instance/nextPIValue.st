tokenizing
nextPIValue
	| nextChar |

	writeStream reset.
	[(nextChar := streamReader next) == nil
		or: [nextChar == $?
			and: [streamReader peek == $>]]]
		whileFalse: [
			nextChar isXMLChar
				ifFalse: [self errorNonCharInPIValue: nextChar].
			writeStream nextPut: nextChar].
	self expectTerminator.
	^ writeStream contents.