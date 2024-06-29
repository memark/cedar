permit(
  principal == a::"88",
  action in [Action::"action",Action::"action",Action::"action"],
  resource
) when {
  true && principal
};
