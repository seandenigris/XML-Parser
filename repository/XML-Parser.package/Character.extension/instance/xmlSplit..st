*XML-Parser
xmlSplit: aCollection
	"faster, portable version"
	| parts |

	parts := OrderedCollection new.
	self xmlSplit: aCollection do: [:each | parts addLast: each].
	^ parts.