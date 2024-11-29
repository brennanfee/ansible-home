// CommitLint Configuration - .commitlintrc.mjs
const Configuration = {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "subject-case": [2, "always", ["lower-case", "sentence-case", "start-case"]],
  },
  defaultIgnores: true,
};

export default Configuration;
