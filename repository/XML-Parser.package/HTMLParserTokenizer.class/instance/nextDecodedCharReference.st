tokenizing
nextDecodedCharReference
	| codePoint codePointStream character |

	"skip $#"
	streamReader next.
	((codePoint := self nextName) notEmpty
		and: [streamReader peek == $;])
		ifFalse: [
			streamReader pushBack: (codePoint copyWithFirst: $#).
			^ $&].
	streamReader next.

	codePointStream := codePoint readStream.
	character := self characterFromCodePoint: (XMLIntegerReader readFrom: codePointStream).
	^ (character notNil and: [codePointStream atEnd])
		ifTrue: [character]
		ifFalse: [
			streamReader pushBack: ((codePoint copyWithFirst: $#) copyWith: $;).
			$&].