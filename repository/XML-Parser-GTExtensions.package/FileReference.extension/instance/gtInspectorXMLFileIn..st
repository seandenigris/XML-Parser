*XML-Parser-GTExtensions
gtInspectorXMLFileIn: aComposite
	<gtInspectorPresentationOrder: 4>

	| currentTextStylerDecorator |

	self isXMLFile
		ifFalse: [^ self].

	aComposite custom:
		(GLMRubricHighlightedTextPresentation new
			title: 'Source';
			editingMode: [
				"saved to get the converter later"
				currentTextStylerDecorator := GLMXMLHighlighterTextStylerDecorator new.
				GLMHighlighterTextRubEditingMode withStylerDecorator: currentTextStylerDecorator];
			display: [XMLPositionExternalStreamConverter convert: self readStream];
			withLineNumbers: true;
			act: [:presentation | | outputConverter outputString |
					"can raise exceptions so must be called before deleting"
					outputConverter := currentTextStylerDecorator converter.
					outputString := presentation text asString.
					self
						ensureDelete;
						writeStreamDo: [:stream |
							outputConverter
								ifNotNil: [stream converter: outputConverter].
							stream nextPutAll: outputString]]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save')