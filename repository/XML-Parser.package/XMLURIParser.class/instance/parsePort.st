parsing
parsePort
	| port |

	(self peekFor: $:)
		ifTrue: [
			port :=
				self
					nextIntegerWithBase: 10
					upTo: nil.
			[self atEnd
				or: ['/?#' includes: self peek]]
				whileFalse: [self next]].
	^ port.