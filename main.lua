require 'src/Dependencies'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')

    love.window.setTitle('Taper')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })

    gStateMachine = StateMachine {
        ['title'] = function() return TitleScreenState() end,
        ['play'] = function() return PlayState() end,
        ['score'] = function() return ScoreState() end
    }

    gStateMachine:change('title')

    -- math.randomseed(os.time())

    love.keyboard.keysPressed = {}
    love.mouse.wasPressed = false
end

function love.resise(w,h)
    push:resize(w,h)
end

function love.keypressed(key)
    love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    return love.keyboard.keysPressed[key]
end

function love.mousepressed(x, y, button, istouch)
    if button == 1 then
       love.mouse.wasPressed = true
    end
end

function love.mousereleased(x, y, button, istouch)
    if button == 1 then
       love.mouse.wasPressed = false
    end
end

function love.update(dt)
    gStateMachine:update(dt)

    love.keyboard.keysPressed = {}
end

function love.draw()
    push:start()

    gStateMachine:render()

    push:finish()
end
