permit(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  (true && action) && action
};
