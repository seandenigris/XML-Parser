converting
asHighlightedText
	| text |

	"#contents does not truncate unlike printString or asString"
	text := self contents asText.
	self highlighter highlightText: text.
	^ text.