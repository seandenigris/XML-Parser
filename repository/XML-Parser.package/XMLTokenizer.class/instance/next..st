reading
next: size
	| buffer i |

	"Faster than creating a WriteStream and sending it #contents when finished"
	buffer := String new: size.
	i := 1.
	[i <= size and: [self atEnd not]]
		whileTrue: [buffer at: i put: self next. i := i + 1].
	^ buffer copyFrom: 1 to: i - 1.