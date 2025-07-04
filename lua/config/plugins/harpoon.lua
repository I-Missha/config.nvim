return {

    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
            local harpoon = require("harpoon")

            -- REQUIRED
            harpoon:setup()
            -- REQUIRED
            vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
            vim.keymap.set("n", "<C-n>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

            vim.keymap.set("n", "<C-m>", function() harpoon:list():select(1) end)
            vim.keymap.set("n", "<F3>", function() harpoon:list():select(2) end) -- ctrl+, replaced with F3 in the os
            vim.keymap.set("n", "<F4>", function() harpoon:list():select(3) end) -- ctrl+. replaced with F4 in the os
            vim.keymap.set("n", "<C-/>", function() harpoon:list():select(4) end)

            -- Toggle previous & next buffers stored within Harpoon list
            vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
            vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
     end

}
