permit(
  principal,
  action,
  resource == a::"@"
) when {
  true && (context == ((a::"@" is a) == (principal.isIpv4())))
};
