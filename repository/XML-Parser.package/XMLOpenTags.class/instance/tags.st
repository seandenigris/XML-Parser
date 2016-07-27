accessing
tags
	^ tags ifNil: [tags := OrderedCollection new: 30]