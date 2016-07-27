private 
newHighlightColored: aTextColor
	^ aTextColor
		ifNotNil: [
			self writer addHighlight: 
				(XMLHighlight new
					color: aTextColor;
					start: self writer position + 1)]