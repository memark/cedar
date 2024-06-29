permit(
  principal == a::"\u{10}",
  action == Action::"action",
  resource
) when {
  true && (a::"\u{10}" like "*\'*e*")
};
