permit(
  principal in a::"\0\0\0\08",
  action == Action::"action",
  resource == a::"\0\0\0\08"
) when {
  true
};
