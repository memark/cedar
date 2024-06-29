forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  ((true && ((!(a::"".containsAny(false))).containsAny((false.containsAny(principal)) in principal))) && principal) && principal
};
