private
furtherNormalizeAttributeValueIn: anAttributeDictionary
	| attributeValue writeStream isInWhitespace |

	attributeValue := anAttributeDictionary at: self attribute ifAbsent: [^ self].
	writeStream := WriteStream on: (String new: attributeValue size).
	isInWhitespace := false.
	attributeValue do: [:each |
		isInWhitespace
			ifTrue: [
				each isSeparator
					ifFalse: [
						writeStream position > 0
							ifTrue: [writeStream space].
						isInWhitespace := false.
						writeStream nextPut: each]]
			ifFalse: [
				each isSeparator
					ifTrue: [isInWhitespace := true]
					ifFalse: [writeStream nextPut: each]]].
	anAttributeDictionary
		at: self attribute
		put: writeStream contents.