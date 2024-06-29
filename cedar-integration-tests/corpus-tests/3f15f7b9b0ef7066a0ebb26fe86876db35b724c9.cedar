permit(
  principal == a::"\u{8}\0",
  action,
  resource
) when {
  (true && (ip(if principal then principal else principal))) && principal
};
