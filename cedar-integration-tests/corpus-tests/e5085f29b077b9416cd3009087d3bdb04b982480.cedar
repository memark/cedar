forbid(
  principal,
  action in [Action::"action"],
  resource == a::"A2;"
) when {
  true && (true in action)
};
