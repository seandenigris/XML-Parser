*XML-Parser-GTExtensions
gtInspectorXMLFileIn: composite
	<gtInspectorPresentationOrder: 40>

	self isXMLFile
		ifFalse: [^ self].
	
	composite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				GLMHighlighterTextRubEditingMode withStylerDecorator:
					GLMXMLHighlighterTextStylerDecorator new];
			display: [XMLPositionExternalStreamConverter convert: self readStream];
			act: [:presentation | 
					self
						ensureDelete;
						writeStreamDo: [:stream |
							stream nextPutAll: presentation text asString]]
				icon: GLMUIThemeExtraIcons glamorousSave 
				on: $s 
				entitled: 'Save')