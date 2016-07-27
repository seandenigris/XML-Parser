private
readNumberBase: base
	"Read a hex number from stream until encountering $; "

	| value digit |

	base = 10
		ifFalse: [ | numberString | 
			numberString := self upTo: $;.
			stream skip: -1.
			^ Integer readFrom: numberString asUppercase readStream base: base].

	value := 0.
	digit := DigitTable at: self peek asciiValue.
	digit < 0
		ifTrue: [^ nil].
	self next.
	value := digit.
	[digit := DigitTable at: self peek asciiValue.
	digit < 0
		ifTrue: [^value]
		ifFalse: [
			self next.
			value := value * base + digit]
		] repeat.
	^ value