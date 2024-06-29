permit(
  principal == a::".\u{3}\0",
  action == Action::"",
  resource
) when {
  true && (a::".\u{3}\0"["n"])
};
