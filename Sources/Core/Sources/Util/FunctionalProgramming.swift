/// The identity function.
func identity<T>(_ value: T) -> T {
  value
}

func swap<T>(_ left: inout T, _ right: inout T) {
  let temp = left
  left = right
  right = temp
}
