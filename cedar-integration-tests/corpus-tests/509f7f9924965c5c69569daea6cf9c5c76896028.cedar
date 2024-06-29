permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && ("r" like "\0\0*\0*\0*\0*")
};
