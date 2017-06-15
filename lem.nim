
import os
import src/actions

proc usage(): string =
  result = """
    lem project / p <name>
    lem task / t <task> <desc> <tags>*
    lem start / a
    lem list
    lem tags
  """

proc exitError(msg: string) =
  echo msg
  exit(1)

proc main() =
  var action = paramStr(1)
  case action:
    of "project":
      if paramCount() < 2:
        exitError("Expected name")        
      createProject(paramStr(2))
    of "task":
      if paramCount() < 3:
        exitError("Expected a task")
      var tags: seq[string]
      for t in 2..<paramCount():
        tags.add(paramStr(t))
      createTask(paramStr(2), paramStr(3), tags)
    of "start":
      startBlock()
    of "list":
      listBlocks(by=Date)
    of "tags":
      listBlocks(by=Tag)
if paramCount() == 0:
  echo usage()
else:
  main()


