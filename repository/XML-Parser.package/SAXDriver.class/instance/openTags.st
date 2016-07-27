accessing
openTags
	^ openTags ifNil: [openTags := XMLOpenTags new]