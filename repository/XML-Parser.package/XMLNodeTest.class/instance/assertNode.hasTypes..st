assertions
assertNode: aNode hasTypes: aTypeArray
	self deny:
		((#(isAttribute isCData isComment isContentNode isDocument isElement isPI isStringNode)
			copyWithoutAll: aTypeArray) anySatisfy: [:each | aNode perform: each]).
	self assert: (aTypeArray allSatisfy: [:each | aNode perform: each]).