tests
testString
	| comment |

	comment := self nodeClass new.
	self assert: comment string isEmpty.
	comment string: self markupString.
	self assert: comment string = self markupString.

	self assert: (self nodeClass string: self markupString) string = self markupString.