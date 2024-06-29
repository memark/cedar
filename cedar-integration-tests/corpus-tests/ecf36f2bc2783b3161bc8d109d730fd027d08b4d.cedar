forbid(
  principal is a,
  action == Action::"action",
  resource == a::"\u{4}\0\0\0\0\0\0\0"
) when {
  true
};
