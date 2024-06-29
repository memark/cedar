forbid(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  ((true && ((principal has "r") == principal)) && principal) && principal
};
