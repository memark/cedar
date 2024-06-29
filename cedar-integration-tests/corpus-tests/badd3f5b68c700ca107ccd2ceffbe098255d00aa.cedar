permit(
  principal,
  action,
  resource
) when {
  ((true && (principal has "")) && principal) && principal
};
