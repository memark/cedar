forbid(
  principal is a in a::"",
  action in [Action::""],
  resource is a in a::""
) when {
  (true && ((principal in principal) in principal)) && principal
};
