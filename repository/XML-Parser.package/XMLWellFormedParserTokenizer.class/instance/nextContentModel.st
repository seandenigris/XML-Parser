tokenizing - dtd
nextContentModel
	| parameterEntity |

	self expectSeparatorsInDeclaration.
	streamReader peek == $A
		ifTrue: [^ self expectNextAll: 'ANY'].
	streamReader peek == $E
		ifTrue: [^ self expectNextAll: 'EMPTY'].
	
	writeStream
		reset;
		nextPut: (self expectNext: $().
	parameterEntity := self topPushedBackEntity.
	self skipSeparatorsInDeclaration.
	streamReader peek == $#
		ifTrue: [
			self nextMixedContentListOnWriteStreamFromEntity:
				parameterEntity]
		ifFalse: [
			self nextContentModelChoiceOrSequenceOnWriteStreamFromEntity:
				parameterEntity].

	^ writeStream contents.