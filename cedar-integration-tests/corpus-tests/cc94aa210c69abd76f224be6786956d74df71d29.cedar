permit(
  principal is r,
  action == Action::"action",
  resource is A in r::""
) when {
  true
};
