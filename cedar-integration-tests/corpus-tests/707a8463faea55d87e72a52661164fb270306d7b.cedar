forbid(
  principal,
  action == Action::"action",
  resource in a::""
) when {
  true && (((principal.isIpv6()) is a) is a)
};
