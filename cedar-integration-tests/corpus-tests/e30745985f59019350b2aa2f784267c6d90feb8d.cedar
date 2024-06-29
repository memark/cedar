forbid(
  principal is a in a::"",
  action in [Action::""],
  resource in a::""
) when {
  (true && (((false in principal) || principal) || principal)) && principal
};
