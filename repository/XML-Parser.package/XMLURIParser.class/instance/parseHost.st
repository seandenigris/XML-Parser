parsing
parseHost
	| host |

	self peek == $[
		ifTrue: [
			host := (self nextPercentEncodedDelimitedBy: ']') copyWith: $].
			self peekFor: $]]
		ifFalse: [host := self nextPercentEncodedDelimitedBy: HostDelimiters].
	^ host asLowercase.