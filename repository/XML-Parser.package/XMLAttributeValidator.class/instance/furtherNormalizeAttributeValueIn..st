private
furtherNormalizeAttributeValueIn: anAttributeDictionary
	"The tokenizer normalizes all whitespace in attribute values to spaces
	and this step normalizes again by removing leading and trailing spaces
	and turing multiple spaces to single spaces."
	| attributeAssociation semiNormalizedValue writeStream isInWhitespace |

	attributeAssociation :=
		anAttributeDictionary
			associationAt: self attribute
			ifAbsent: [^ self].
	semiNormalizedValue := attributeAssociation value.
	"must use #writeStream instead of WriteStream on: to get a 0-based stream
	on Gemstone"
	writeStream := (String new: semiNormalizedValue size) writeStream.
	isInWhitespace := false.
	"to:do: for speed"
	1 to: semiNormalizedValue size do: [:i | | nextChar |
		(nextChar := semiNormalizedValue at: i) == NormalizedSpace
			ifTrue: [
				isInWhitespace
					ifFalse: [isInWhitespace := true]]
			ifFalse: [
				isInWhitespace
					ifTrue: [
						writeStream position > 0
							ifTrue: [writeStream nextPut: NormalizedSpace].
						isInWhitespace := false].
				writeStream nextPut: nextChar]].
	attributeAssociation value: writeStream contents.