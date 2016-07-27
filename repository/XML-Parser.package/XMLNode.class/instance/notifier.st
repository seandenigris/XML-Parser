private
notifier
	"observable subclasses override to return an XMLNotifier.
	This saves memory so only classes that need it have a notifier slot"
	XMLDOMException signal: 'Node is not observable'