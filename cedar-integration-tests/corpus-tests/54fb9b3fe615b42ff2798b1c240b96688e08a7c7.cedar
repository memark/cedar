permit(
  principal == a::"\r",
  action == Action::"action",
  resource
) when {
  true && principal
};
