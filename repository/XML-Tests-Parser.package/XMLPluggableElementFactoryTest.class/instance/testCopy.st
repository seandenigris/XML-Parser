tests
testCopy
	| factory copy |

	factory := self newFactory.
	factory handleElement: 'user' withClass: XMLFUserElement.
	copy := factory copy.
	self
		deny: copy == factory;
		deny: copy elementClasses == factory elementClasses;
		assert: copy elementClasses = factory elementClasses.

	copy handleElement: 'user' withClass: XMLElement.
	self deny: copy elementClasses = factory elementClasses.