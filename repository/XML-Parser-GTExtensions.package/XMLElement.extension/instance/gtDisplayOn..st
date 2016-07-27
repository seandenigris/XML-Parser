*XML-Parser-GTExtensions
gtDisplayOn: stream
	stream
		nextPut: $<;
		nextPutAll: self name.
	self hasAttributes
		ifTrue: [ 
			self
				attributeNodesDo: [ :each | 
					stream space.
					each gtDisplayOn: stream ] ].
	stream nextPut: $>