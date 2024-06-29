permit(
  principal,
  action == Action::"action",
  resource
) when {
  (true && (([].containsAny(0)) == principal)) && principal
};
