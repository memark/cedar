forbid(
  principal in a::"b\0\0\0",
  action in [Action::"action",Action::"action"],
  resource in a::"b\0\0\0"
) when {
  true
};
