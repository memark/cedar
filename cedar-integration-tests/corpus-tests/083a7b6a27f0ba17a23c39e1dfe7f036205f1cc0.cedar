forbid(
  principal,
  action in [l::Action::"action"],
  resource
) when {
  ((true && l::a::"") && principal) && principal
};
