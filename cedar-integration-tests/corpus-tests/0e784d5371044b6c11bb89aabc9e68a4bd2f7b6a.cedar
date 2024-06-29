forbid(
  principal,
  action == Action::"action",
  resource
) when {
  (true && (((resource.contains(false)) == principal) == principal)) && principal
};
