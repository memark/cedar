permit(
  principal in a::"",
  action == Action::"action",
  resource is a in a::""
) when {
  ((true && (!false)) && [principal, principal, principal, principal]) && principal
};
