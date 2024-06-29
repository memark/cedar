forbid(
  principal is a in a::"",
  action == Action::"",
  resource is a in a::""
) when {
  (true && ((principal in principal) in principal)) && principal
};
