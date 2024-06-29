forbid(
  principal == a::"n\0",
  action in [Action::"action"],
  resource in a::"n\0"
) when {
  true && Action::"action"
};
