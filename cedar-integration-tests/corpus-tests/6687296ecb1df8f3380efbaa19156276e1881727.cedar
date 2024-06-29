forbid(
  principal == a::"\0&",
  action in [Action::"action"],
  resource == a::"\0&"
) when {
  ((true && a::"\0&") && (principal in principal)) && principal
};
