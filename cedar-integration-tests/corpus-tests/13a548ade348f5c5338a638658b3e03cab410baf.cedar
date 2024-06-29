forbid(
  principal,
  action in [Action::"action"],
  resource in a::"A:2;"
) when {
  true && (!(!(Action::"action" * false)))
};
