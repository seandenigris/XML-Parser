*XML-Parser-GTExtensions
spotterPreviewSourceIn: aComposite
	<spotterPreview: 10>
	
	aComposite text
		title: 'Source';
		display: [ :anElement | self prettyPrinted ];
		entity: self