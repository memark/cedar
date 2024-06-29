permit(
  principal == a::"",
  action,
  resource
) when {
  ((true && (principal.lessThanOrEqual(principal))) && principal) && principal
};
