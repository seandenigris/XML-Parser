*XML-Parser-GTExtensions
gtDisplayOn: stream
	stream
		nextPut: $<;
		nextPutAll: self name.
	self hasAttributes
		ifTrue: [ 
			self attributeNodesDo: [ :each | 
				stream space.
				each gtDisplayOn: stream ] ].
	self hasChildren
		ifTrue: [ 
			stream nextPut: $>.
			self hasElements
				ifFalse: [ self printContentOn: stream ] ]
		ifFalse: [ stream nextPutAll: ' />' ]