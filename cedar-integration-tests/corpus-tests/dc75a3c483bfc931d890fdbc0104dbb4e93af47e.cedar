forbid(
  principal,
  action in [Action::"action"],
  resource in a::"A2;"
) when {
  true && ((!(!Action::"action")) == Action::"action")
};
