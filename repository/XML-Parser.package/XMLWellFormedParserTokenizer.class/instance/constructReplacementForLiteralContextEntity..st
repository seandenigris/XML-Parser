entity replacing
constructReplacementForLiteralContextEntity: anEntity
	| previousEscaper |

	previousEscaper := streamReader characterEscaper.
	self
		pushBackEntity: anEntity
		onClose: [streamReader characterEscaper: previousEscaper].

	"wait till after the text declaration was read to start escaping"
	(self currentActiveEntity == anEntity
		and: [previousEscaper isNil])
		ifTrue: [
			streamReader characterEscaper:
				(XMLQuoteCharacterEscaper for: streamReader)].