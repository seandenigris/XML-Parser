tokenizing - dtd
nextContentModel
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $A
		ifTrue: [^ self expectNextAll: 'ANY'].
	streamReader peek == $E
		ifTrue: [^ self expectNextAll: 'EMPTY'].
	
	writeStream
		reset;
		nextPut: (self expectNext: $().
	self skipSeparatorsReplacingParameterEntities.
	streamReader peek == $#
		ifTrue: [self nextMixedContentListValuesOnWriteStream]
		ifFalse: [self nextContentModelChoiceOrSequenceValuesOnWriteStream].

	^ writeStream contents.