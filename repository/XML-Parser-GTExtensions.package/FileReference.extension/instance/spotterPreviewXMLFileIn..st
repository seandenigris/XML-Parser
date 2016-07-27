*XML-Parser-GTExtensions
spotterPreviewXMLFileIn: aComposite
	<spotterPreview: 10>

	self isXMLFile
		ifFalse: [^ self].

	aComposite text
		title: 'Source';
		display: [
			XMLHighlightingParser parse:
				(XMLExternalDocumentConverter convertFileNamed: self fullName)];
		entity: self.