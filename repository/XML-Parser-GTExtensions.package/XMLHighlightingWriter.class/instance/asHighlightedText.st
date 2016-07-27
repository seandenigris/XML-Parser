converting
asHighlightedText
	| text |

	text := self asString asText.
	highlights do: [:each | each applyToText: text].
	^ text.