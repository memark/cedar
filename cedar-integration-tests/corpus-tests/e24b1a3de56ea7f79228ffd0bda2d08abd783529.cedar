forbid(
  principal,
  action in [Action::"d"],
  resource
) when {
  true && (principal["Yo"])
};
