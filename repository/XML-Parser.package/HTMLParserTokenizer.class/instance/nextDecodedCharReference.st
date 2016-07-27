tokenizing
nextDecodedCharReference
	| codePoint codePointStream character |

	"skip $#"
	streamReader next.

	codePoint := self nextName.
	codePointStream := codePoint readStream.
	character := self characterFromCodePoint: (XMLIntegerReader readFrom: codePointStream).
	(character notNil and: [codePointStream atEnd])
		ifTrue: [
			streamReader peek == $;
				ifTrue: [streamReader next].
			^ character]
		ifFalse: [
			streamReader pushBack: (codePoint copyWithFirst: $#).
			^ $&].