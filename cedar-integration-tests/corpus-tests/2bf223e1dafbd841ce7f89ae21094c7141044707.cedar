permit(
  principal,
  action,
  resource
) when {
  ((true && (false in [])) && principal) && principal
};
