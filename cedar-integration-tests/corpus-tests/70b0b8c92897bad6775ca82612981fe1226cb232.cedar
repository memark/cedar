permit(
  principal == a::"n\0",
  action in [Action::"action"],
  resource == a::"n\0"
) when {
  ((true && a::"n\0") && principal) && principal
};
