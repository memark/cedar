permit(
  principal,
  action,
  resource
) when {
  ((true && (false.containsAll(context.containsAll(principal)))) && principal) && principal
};
