forbid(
  principal == a::"v$",
  action == Action::"action",
  resource is a
) when {
  true && Action::"action"
};
