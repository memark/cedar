permit(
  principal == a::"\u{2}",
  action == Action::"action",
  resource
) when {
  true && ("" like "*")
};
