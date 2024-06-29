permit(
  principal is a,
  action == Action::"action",
  resource in a::"\0\0"
) when {
  true
};
