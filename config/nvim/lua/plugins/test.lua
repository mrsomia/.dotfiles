return {
  { "nvim-neotest/neotest-plenary" },
  -- { "nvim-neotest/neotest-python" },
  { "fredrikaverpil/neotest-golang" },
  { "marilari88/neotest-vitest" },
  -- { "thenbe/neotest-playwright" },
  {
    "nvim-neotest/neotest",
    dependecies = {
      "nvim-neotest/neotest-python",
    },
    opts = {
      adapters = {
        "neotest-plenary",
        "neotest-python",
        "neotest-golang",
        -- "neotest-playwright",
        "neotest-vitest",
      },
    },
  },
}
