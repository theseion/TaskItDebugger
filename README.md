# TaskItDebugger
Experimental thread history aware debugger for TaskIt (https://github.com/sbragagnolo/taskit).

Based on http://github.com/theseion/master-thesis.

```smalltalk
Metacello new
  baseline: #TaskItDebugger;
  repository: 'github://theseion/TaskItDebugger:master/mc';
  load.

(Smalltalk at: #TKTDebugger) exampleFailure
```
