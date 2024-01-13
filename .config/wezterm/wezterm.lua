-- Copyright 2024 Nicolas Paul.  All rights reserved.
-- Use of this source code is governed by a BSD-style
-- license that can be found in the COPYRIGHT file.

--                         █████
--                       ███░░░███
--  ████████    ██████  ███   ░░███     Nicolas Paul
-- ░░███░░███  ███░░███░███    ░███
--  ░███ ░███ ░███ ░░░ ░███    ░███     n@nc0.fr
--  ░███ ░███ ░███  ███░░███   ███      https://x.com/nc0_r
--  ████ █████░░██████  ░░░█████░
-- ░░░░ ░░░░░  ░░░░░░     ░░░░░░
--
-- Nicolas Paul's WezTerm configuration.

local wezterm = require 'wezterm'

-- The configuration itself.
local config = {}

-- config.font = 'SF Mono'

config.color_scheme = "Gruvbox Dark (Gogh)"

config.inactive_pane_hsb = {
  saturation = 0.9,
  brightness = 0.8,
}

config.window_background_opacity = 0.9
config.text_background_opacity = 1

-- config.hide_tab_bar_if_only_one_tab = true

return config
