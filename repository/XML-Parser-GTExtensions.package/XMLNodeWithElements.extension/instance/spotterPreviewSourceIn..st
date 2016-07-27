*XML-Parser-GTExtensions
spotterPreviewSourceIn: aComposite
	<spotterPreview: 10>
	
	aComposite text
		title: 'Source';
		display: [
			XMLHighlightingWriter new
				writeWith: [:writer |
					writer formatter indentString: '  '.
					self writeXMLOn: writer];
				asHighlightedText];
		entity: self