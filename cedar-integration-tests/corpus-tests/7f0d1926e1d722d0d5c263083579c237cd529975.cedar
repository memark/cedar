forbid(
  principal is a in a::"",
  action in [Action::"action"],
  resource is a in a::""
) when {
  (true && (((if principal then principal else principal) in principal) has "A")) && principal
};
