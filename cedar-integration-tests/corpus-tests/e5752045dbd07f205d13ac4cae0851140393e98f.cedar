permit(
  principal in a::"\0\0@",
  action in [Action::"action"],
  resource == a::"\0\0@"
) when {
  true && (false like "\0\0")
};
