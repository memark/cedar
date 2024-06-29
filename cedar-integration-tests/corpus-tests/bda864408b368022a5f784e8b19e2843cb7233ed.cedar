permit(
  principal == a::"\u{8}\0",
  action,
  resource
) when {
  (true && (if (if (!principal) then (principal && principal) else principal) then principal else principal)) && principal
};
