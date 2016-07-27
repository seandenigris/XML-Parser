*XML-Parser-GTExtensions
gtInspectorSourceIn: composite
	<gtInspectorPresentationOrder: 40>
	composite text 
		title: 'Source';
		acceptsSelection: true;
		display: [
			self hasParent
				ifTrue: [self prettyPrinted ]
				ifFalse: [self innerXMLPrettyPrinted] ];
		act: [:presentation |
			self hasParent
				ifTrue: [| oldParent oldIndex |
					oldParent := self parent.
					oldIndex := oldParent nodes indexOf: self.
					oldParent
						outerXML: presentation text
						forNode: self.
					composite entity: (oldParent nodeAt: oldIndex)]
				ifFalse: [self innerXML: presentation text].
			composite update]
		icon: GLMUIThemeExtraIcons glamorousAccept
		on: $s 
		entitled: 'Save'