tests
testTarget
	| pi |

	pi := self nodeClass new.
	self assert: pi target isEmpty.
	pi target: 'test'.
	self assert: pi target = 'test'.