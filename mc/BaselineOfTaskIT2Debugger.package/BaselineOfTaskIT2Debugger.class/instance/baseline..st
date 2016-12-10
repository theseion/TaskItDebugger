baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec blessing: #baseline.
			spec
				baseline: 'MLThreads'
				with: [ spec repository: 'github://theseion/master-thesis:master/mc' ].
			spec package: 'TaskIT2Debugger'.
			spec
				group: 'default'
				with: #('MLThreads' 'TaskIT2Debugger') ]