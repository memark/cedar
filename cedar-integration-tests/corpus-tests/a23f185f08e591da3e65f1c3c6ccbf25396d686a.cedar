permit(
  principal == a::"\0\0\0",
  action == Action::"action",
  resource
) when {
  true && (a::"\0\0\0" like "sou")
};
