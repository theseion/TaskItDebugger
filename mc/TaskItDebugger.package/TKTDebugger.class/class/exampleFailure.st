examples
exampleFailure
	<example>

	| holder |
	holder := ProcessHolder for: Processor activeProcess.
	[
		Processor activeProcess masterProcessHolder: holder.
		Object blah ] future onFailureDo: [ :ex | ex debug]