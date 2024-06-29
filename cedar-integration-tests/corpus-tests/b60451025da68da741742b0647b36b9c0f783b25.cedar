forbid(
  principal,
  action,
  resource is a in a::"\0\0!\0;\0;<\03"
) when {
  true && (principal.isIpv6())
};
