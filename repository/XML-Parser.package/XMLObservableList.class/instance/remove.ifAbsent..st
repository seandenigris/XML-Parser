removing
remove: anObject ifAbsent: aBlock
	^ self with: [super remove: anObject ifAbsent: [^ aBlock value]] remove: anObject