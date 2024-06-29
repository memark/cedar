@_q("48")
permit(
  principal == a::"8822",
  action == Action::"action",
  resource
) when {
  (true && ((if principal then principal else principal) + principal)) && principal
};
