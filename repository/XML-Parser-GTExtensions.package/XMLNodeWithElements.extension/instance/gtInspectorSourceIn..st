*XML-Parser-GTExtensions
gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 40>

	"removed unfinished source panel editing support for now"
	composite text 
		title: 'Source';
		format: [| writer |
			writer := XMLHighlightingWriter new.
			self writeXMLOn: writer.
			writer asHighlightedText]