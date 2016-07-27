file open/close
close
	stream close.
	onClose ifNotNil: [onClose value].