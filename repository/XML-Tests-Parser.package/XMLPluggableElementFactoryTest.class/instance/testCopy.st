tests
testCopy
	| factory copy |

	factory := self newFactory.
	factory handleElement: 'user' withClass: XMLFUserElement.
	copy := factory copy.
	self
		deny: copy == factory;
		deny: copy elementClassesByName == factory elementClassesByName;
		assert: copy elementClassesByName = factory elementClassesByName.