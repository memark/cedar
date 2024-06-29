permit(
  principal,
  action == Action::"action",
  resource
) when {
  true && (if context then {"A": principal} else principal)
};
