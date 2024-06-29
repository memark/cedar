permit(
  principal in a::"@c\"86Awnd\0\0\0\0\0c\"\"\"\"5\0\0\0\0\0\0",
  action,
  resource == a::"@c\"86Awnd\0\0\0\0\0c\"\"\"\"5\0\0\0\0\0\0"
) when {
  (true && (if principal then principal else principal)) && principal
};
