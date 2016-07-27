private
remove: aNode from: aCollection
	^ aCollection remove: aNode ifAbsent: [nil]