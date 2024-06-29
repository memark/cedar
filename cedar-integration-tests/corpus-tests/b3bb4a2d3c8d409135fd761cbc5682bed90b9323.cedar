permit(
  principal,
  action == Action::"action",
  resource is a in a::""
) when {
  ((true && (0 - principal)) && principal) && principal
};
