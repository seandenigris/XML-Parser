assertions
assertNode: anObservedNode canNotifyNodes: anObserverArray
	anObservedNode notifyOf: #mockNotifyWith: with: #one.
	self assert: (anObserverArray allSatisfy: [:each | each lastNotificationArguments = #(one)]).

	anObservedNode notifyOf: #mockNotifyWith:with: with: #one with: #two.
	self assert: (anObserverArray allSatisfy: [:each | each lastNotificationArguments = #(one two)]).

	anObservedNode notifyOf: #mockNotifyWith:with:with: with: #one with: #two with: #three.
	self assert: (anObserverArray allSatisfy: [:each | each lastNotificationArguments = #(one two three)]).

	anObserverArray do: [:each | each lastNotificationArguments: nil].
	anObservedNode notifyOf: #mockNotifyWith:with:with: withArguments: #(one two three).
	self assert: (anObserverArray allSatisfy: [:each | each lastNotificationArguments = #(one two three)]). 