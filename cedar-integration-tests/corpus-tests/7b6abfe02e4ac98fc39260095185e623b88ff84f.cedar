permit(
  principal in a::"",
  action in [Action::"action"],
  resource == a::""
) when {
  ((true && (if ((if principal then principal else principal) in principal) then principal else principal)) && principal) && principal
};
