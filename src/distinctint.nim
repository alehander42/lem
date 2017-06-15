template distinctInt*(e: untyped, sub: bool = false): untyped {.dirty.} =
  type `e`* = distinct int

  proc `+`*(x:  `e`, y: `e`): `e` =
    return `e`(int(x) + int(y))

  when not sub:
    proc `-`*(x: `e`, y: `e`): `e` =
      return `e`(int(x) - int(y))

  proc `*`*(x: `e`, y: int): `e` =
    return `e`(int(x) * y)

  proc `*`*(x: int, y: `e`): `e` =
    return `e`(x * int(y))

  proc `div`*(x: `e`, y: int): `e` =
    return `e`(int(x) div y)

  proc `div`*(x: `e`, y: `e`): int =
    return int(x) div int(y)

  proc `mod`*(x: `e`, y: int): `e` =
    return `e`(int(x) mod y)

  proc `==`*(x: `e`, y: `e`): bool =
    return int(x) == int(y)

  proc `>`*(x: `e`, y: `e`): bool =
    return int(x) > int(y)

  proc `<`*(x: `e`, y: `e`): bool =
    return int(x) < int(y)

  proc `>=`*(x: `e`, y: `e`): bool =
    return int(x) >= int(y)

  proc `<=`*(x: `e`, y: `e`): bool =
    return int(x) <= int(y)

  proc `$`*(x: `e`): string =
    return $(int(x))

  proc `abs`*(x: `e`): `e` =
    return `e`(abs(int(x)))

  proc `min`*(x: `e`, y: `e`): `e` =
    return `e`(min(int(x), int(y)))

  proc `max`*(x: `e`, y: `e`): `e` =
    return `e`(max(int(x), int(y)))
