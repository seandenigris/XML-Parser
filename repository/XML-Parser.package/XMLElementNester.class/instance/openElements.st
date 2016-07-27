accessing
openElements
	^ openElements ifNil: [openElements := OrderedCollection new: 50]