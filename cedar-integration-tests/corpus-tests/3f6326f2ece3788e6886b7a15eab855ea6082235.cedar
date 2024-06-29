permit(
  principal is a,
  action,
  resource
) when {
  (false && principal) && principal
};
