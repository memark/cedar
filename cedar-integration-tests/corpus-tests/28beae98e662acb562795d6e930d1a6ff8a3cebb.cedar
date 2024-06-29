permit(
  principal == a::"\0i\u{1}\0\0\u{3}",
  action == Action::"action",
  resource is a in a::"\0i\u{1}\0\0\u{3}"
) when {
  true
};
