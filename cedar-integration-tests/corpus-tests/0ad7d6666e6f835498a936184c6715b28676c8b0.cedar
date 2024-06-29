forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  (true && (((false in principal) in principal) in principal)) && principal
};
