permit(
  principal in a::"?\0\0\0\0\0\0\06",
  action == Action::"action",
  resource is a in a::"?\0\0\0\0\0\0\06"
) when {
  (true && (principal.isInRange(principal))) && principal
};
