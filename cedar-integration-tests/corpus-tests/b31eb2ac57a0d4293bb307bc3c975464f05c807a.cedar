permit(
  principal,
  action,
  resource
) when {
  ((true && (context.isIpv6())) && principal) && principal
};
