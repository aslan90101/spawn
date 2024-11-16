-- Создание плоского объекта
local flatPart = Instance.new("Part")
flatPart.Size = Vector3.new(10, 1, 10) -- Размер плоского объекта
flatPart.Position = Vector3.new(0, 5, 0) -- Позиция объекта
flatPart.Anchored = false -- Делаем объект перемещаемым
flatPart.CanCollide = true -- Объект может сталкиваться с другими объектами
flatPart.Parent = game.Workspace

-- Функция для изменения цвета
local function changeColor()
    while true do
        flatPart.BrickColor = BrickColor.Random() -- Устанавливаем случайный цвет
        wait(0.5) -- Задержка перед сменой цвета
    end
end

-- Запускаем функцию изменения цвета в отдельном потоке
coroutine.wrap(changeColor)()

-- Функция для перемещения объекта
local function onPartClicked()
    flatPart.Position = flatPart.Position + Vector3.new(0, 0, 5) -- Перемещение объекта на 5 единиц вперед
end

-- Добавление ClickDetector для перемещения объекта
local clickDetector = Instance.new("ClickDetector")
clickDetector.Parent = flatPart -- Привязываем ClickDetector к объекту
clickDetector.MouseClick:Connect(onPartClicked)


