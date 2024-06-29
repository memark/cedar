@K("D")
forbid(
  principal == a::"\0",
  action in [Action::"action"],
  resource
) when {
  true && (true is a)
};
