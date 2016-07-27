private 
endHighlight: aHighlight
	aHighlight
		ifNotNil: [aHighlight end: self writer position]