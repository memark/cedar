forbid(
  principal == a::"&\0V",
  action == Action::"action",
  resource == a::"&\0V"
) when {
  true && principal
};
