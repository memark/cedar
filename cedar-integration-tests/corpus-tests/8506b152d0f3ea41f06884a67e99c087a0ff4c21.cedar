permit(
  principal in a::"",
  action in [Action::"action"],
  resource
) when {
  (true && (((!principal) is a) is a)) && principal
};
