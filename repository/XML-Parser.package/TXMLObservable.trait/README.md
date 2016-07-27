This traits allows for observability to be grafted on to existing classes without altering their inheritance chain.

Classes using this trait must override #notifier to return an instance of XMLNotifier. Instances can then notify dependent objects of changes by sending themselves any of the messages under "notification," which each take a selector that observers are expected to understand and possibly one or more arguments to send with it.

To get an approximate list of notification selectors that a class using this trait expects its observers to implement, send the class #notifications.