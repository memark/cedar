permit(
  principal == a::"8",
  action in [Action::"action",Action::"action",Action::"action"],
  resource
) when {
  true && principal
};
