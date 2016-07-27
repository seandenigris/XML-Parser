normalization
furtherNormalizeValueIn: anAttributeDictionary
	| readStream writeStream |

	readStream := (anAttributeDictionary at: attribute) readStream.
	writeStream := (String new: readStream size) writeStream.
	readStream skipSeparators.
	[readStream atEnd]
		whileFalse: [
			readStream peek isSeparator
				ifTrue: [
					readStream skipSeparators.
					readStream atEnd
						ifFalse: [writeStream nextPut: Character space]]
				ifFalse: [writeStream nextPut: readStream next]].
	anAttributeDictionary
		at: attribute
		put: writeStream contents.