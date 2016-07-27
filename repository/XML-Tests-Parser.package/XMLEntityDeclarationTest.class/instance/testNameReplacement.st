tests
testNameReplacement
	| declaration |

	declaration := self nodeClass name: 'one' replacement: 'two'.
	self
		assert: declaration name = 'one';
		assert: declaration replacement = 'two'.