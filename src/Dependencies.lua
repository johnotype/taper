push = require 'lib/push'
Class = require 'lib/Class'

require 'src/constants'
require 'src/Config'
require 'src/pieces/Pawn'
require 'src/pieces/Trap'
require 'src/pieces/Sword'

require 'src/board/Tile'
require 'src/board/TileMap'
require 'src/board/Board'

require 'src/StateMachine'
require 'src/states/BaseState'
require 'src/states/TitleScreenState'
require 'src/states/PlayState'
require 'src/states/ScoreState'

-- TODO add textures

gFonts = {
    ['small'] = love.graphics.newFont('assets/fonts/Acme-Regular.ttf', 14),
    ['medium'] = love.graphics.newFont('assets/fonts/Acme-Regular.ttf', 18),
    ['large'] = love.graphics.newFont('assets/fonts/Acme-Regular.ttf', 38),
    ['huge'] = love.graphics.newFont('assets/fonts/Acme-Regular.ttf', 56)
}