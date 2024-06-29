forbid(
  principal,
  action in [],
  resource
) when {
  ((true && context) && (action == principal)) && principal
};
