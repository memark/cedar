forbid(
  principal == a::"",
  action == Action::"action",
  resource is a in a::""
) when {
  (true && [a::"", !true, principal has "", principal]) && principal
};
