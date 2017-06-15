import distinctint, json

# distinctInt(Duration)
# distinctInt(Time, sub=true)

# proc `-`(a: Time, b: Time): Duration =
#   return Duration(Time(a) - Time(b))

# fuck it, i need to improve this

type
  Task = ref object
    name: string
    dependencies: seq[Tag]

  Tag = distinct string

  Block = ref object
    duration: int #Duration
    start:    int
    msg:      string
    tasks:    seq[Task]
    tags:     seq[Tag]

  Project = ref object
    name:   string
    blocks: seq[Block]

proc saveProject*(project: Project) =
  
proc createProject*(name: sring) =
  var project = Project(name: name, blocks: @[])
  saveProject(project)


