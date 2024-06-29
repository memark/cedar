permit(
  principal is a,
  action == Action::"action",
  resource is a in a::"\0\u{10}\u{2}"
) when {
  true
};
