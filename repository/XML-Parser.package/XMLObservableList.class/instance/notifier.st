accessing
notifier
	^ notifier ifNil: [notifier := XMLNotifier new]