as yet unclassified
DoIt
	^ self
		compile: ((self >> #baseline:) sourceCode reject: [ :e | e = Character lf ])