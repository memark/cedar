forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  (true && ((if (principal in principal) then principal else principal) in principal)) && principal
};
