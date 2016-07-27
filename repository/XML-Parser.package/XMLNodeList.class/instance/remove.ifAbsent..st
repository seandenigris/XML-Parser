removing
remove: aNode ifAbsent: aBlock
	^ self with: [super remove: aNode ifAbsent: [^ aBlock value]] remove: aNode