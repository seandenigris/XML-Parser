private
notifier
	^ notifier ifNil: [notifier := XMLNotifier new]