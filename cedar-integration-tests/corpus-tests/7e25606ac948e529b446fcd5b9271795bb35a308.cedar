forbid(
  principal in a::"\0S",
  action in [Action::""],
  resource in a::"\0S"
) when {
  true && (!(!(principal == context)))
};
