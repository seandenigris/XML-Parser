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
	writeStream := (String new: semiNormalizedValue size) writeStream.
	isInWhitespace := false.
	semiNormalizedValue do: [:each |
		each == NormalizedSpace
			ifTrue: [
				isInWhitespace
					ifFalse: [isInWhitespace := true]]
			ifFalse: [
				isInWhitespace
					ifTrue: [
						writeStream xmlParserAtBeginning
							ifFalse: [writeStream nextPut: NormalizedSpace].
						isInWhitespace := false].
				writeStream nextPut: each]].
	attributeAssociation value: writeStream contents.