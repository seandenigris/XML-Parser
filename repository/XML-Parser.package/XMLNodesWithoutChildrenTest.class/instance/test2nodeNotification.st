tests
test2nodeNotification
	| observedNode firstObserverNode secondObserverNode |

	observedNode := XMLMockNode new.
	self
		shouldnt: [observedNode notifyOf: #invalid: with: #one] raise: Error;
		shouldnt: [observedNode notifyOf: #invalid:invalid: with: #one with: #two] raise: Error;
		shouldnt: [observedNode notifyOf: #invalid:invalid:invalid: with: #one with: #two with: #three] raise: Error;
		shouldnt: [observedNode notifyOf: #invalid:invalid:invalid: withArguments: #(one two three)] raise: Error.

	firstObserverNode := XMLMockObserverNode new.
	observedNode addObserver: firstObserverNode.
	self assertNode: observedNode canNotifyNodes: (Array with: firstObserverNode).

	secondObserverNode := XMLMockObserverNode new.
	observedNode addObserver: secondObserverNode.
	self
		assertNode: observedNode
		canNotifyNodes: (Array with: firstObserverNode with: secondObserverNode).

	observedNode removeObserver: firstObserverNode.
	self assertNode: observedNode canNotifyNodes: (Array with: secondObserverNode).

	self
		should: [observedNode notifyOf: #invalid: with: #one] raise: Error;
		should: [observedNode notifyOf: #invalid:invalid: with: #one with: #two] raise: Error;
		should: [observedNode notifyOf: #invalid:invalid:invalid: with: #one with: #two with: #three] raise: Error;
		should: [observedNode notifyOf: #invalid:invalid:invalid: withArguments: #(one two three)] raise: Error.