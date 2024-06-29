permit(
  principal is a,
  action == Action::"action",
  resource in a::"\0D\0"
) when {
  (true && (!((!((false.containsAny(principal)) < principal)) < principal))) && principal
};
