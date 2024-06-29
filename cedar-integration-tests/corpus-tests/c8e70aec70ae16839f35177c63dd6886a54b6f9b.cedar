permit(
  principal == a::"\0\0",
  action == Action::"action",
  resource
) when {
  true && (false like "\0\u{16}\0%")
};
