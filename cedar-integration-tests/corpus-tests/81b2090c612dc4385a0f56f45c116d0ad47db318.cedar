forbid(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  ((true && Action::"action") && (((Action::"action" == Action::"action") == principal) == principal)) && principal
};
