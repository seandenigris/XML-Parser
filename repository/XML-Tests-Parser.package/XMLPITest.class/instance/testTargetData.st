tests
testTargetData
	| pi |

	pi := self nodeClass target: 'target' data: 'data'.
	self
		assert: pi target = 'target';
		assert: pi data = 'data'.