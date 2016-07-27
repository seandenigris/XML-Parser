accessing
openIncludeSections
	^ openIncludeSections
		ifNil: [openIncludeSections := OrderedCollection new: 5]