tests
testAsPluggableNodeFactory
	| factory pluggableFactory |

	factory := self factoryClass new.
	pluggableFactory := factory asPluggableNodeFactory.
	self
		assert: (pluggableFactory isKindOf: XMLPluggableNodeFactory);
		assert: pluggableFactory == factory.