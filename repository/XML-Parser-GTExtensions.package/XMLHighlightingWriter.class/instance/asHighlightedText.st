converting
asHighlightedText
	| text |

	text := self asString asText.
	self highlighter highlightText: text.
	^ text.