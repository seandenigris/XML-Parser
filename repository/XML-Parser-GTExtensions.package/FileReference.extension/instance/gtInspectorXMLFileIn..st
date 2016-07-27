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
			display: [XMLExternalDocumentConverter convertFileNamed: self fullName];
			withLineNumbers: true;
			act: [:presentation | | outputString outputStreamConverter |
					outputString := presentation text asString.
					outputStreamConverter :=
						(XMLStreamConverter newForEncoding:
							currentTextStylerDecorator encodingName)
							ifNil: [XMLStreamConverter default].
					self fullName asXMLFileHandle writeStreamDo: [:writeStream |
						writeStream
							streamConverter: outputStreamConverter;
							nextPutByteOrderMark;
							nextPutAll: outputString].
					presentation clearUserEdits]
				icon: GLMUIThemeExtraIcons glamorousSave
				on: $s
				entitled: 'Save')