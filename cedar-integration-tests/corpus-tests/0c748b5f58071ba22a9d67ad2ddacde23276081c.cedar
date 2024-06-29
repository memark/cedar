permit(
  principal == a::"\t",
  action in [Action::"action"],
  resource == a::""
) when {
  true && (if action then principal else true)
};
