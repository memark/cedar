forbid(
  principal in a::"%",
  action in [Action::"action"],
  resource == a::"%"
) when {
  (true && (!(false is a))) && (!(principal == principal))
};
