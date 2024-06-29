forbid(
  principal,
  action == Action::"action",
  resource is a in a::""
) when {
  (true && (((resource like "") like "\0\0*\0*\0*\0*") in (!principal))) && principal
};
