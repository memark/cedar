permit(
  principal in l::a::"88",
  action in [l::Action::"action"],
  resource
) when {
  true && (context.isIpv4())
};
