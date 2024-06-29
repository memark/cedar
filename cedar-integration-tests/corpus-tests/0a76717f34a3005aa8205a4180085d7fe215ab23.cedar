permit(
  principal == a::"\r",
  action in [Action::"action"],
  resource
) when {
  (true && principal) && false
};
