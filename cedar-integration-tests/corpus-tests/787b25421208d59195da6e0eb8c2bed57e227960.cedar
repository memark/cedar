permit(
  principal == a::"\0\0\0",
  action == Action::"action",
  resource
) when {
  true && ("r\0" like "*\0*")
};
