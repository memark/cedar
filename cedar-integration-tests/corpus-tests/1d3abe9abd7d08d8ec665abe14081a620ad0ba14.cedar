forbid(
  principal,
  action in [Action::""],
  resource
) when {
  ((true && (a::"" in (a::"" && principal))) && principal) && principal
};
