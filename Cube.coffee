# Função para desenhar um cubo em um elemento canvas
drawCube = () ->
  canvas = document.getElementById('cubeCanvas')
  ctx = canvas.getContext('2d')
  
  # Limpar o canvas
  ctx.clearRect(0, 0, canvas.width, canvas.height)
  
  # Desenhar o cubo
  ctx.fillStyle = '#3498db'
  ctx.strokeStyle = '#2980b9'
  
  ctx.beginPath()
  ctx.moveTo(50, 50)
  ctx.lineTo(150, 50)
  ctx.lineTo(100, 0)
  ctx.lineTo(0, 0)
  ctx.closePath()
  ctx.fill()
  ctx.stroke()
  
  ctx.beginPath()
  ctx.moveTo(50, 50)
  ctx.lineTo(50, 150)
  ctx.lineTo(0, 100)
  ctx.lineTo(0, 0)
  ctx.closePath()
  ctx.fill()
  ctx.stroke()
  
  ctx.beginPath()
  ctx.moveTo(100, 0)
  ctx.lineTo(150, 50)
  ctx.lineTo(150, 150)
  ctx.lineTo(100, 100)
  ctx.closePath()
  ctx.fill()
  ctx.stroke()
  
  # Atualizar o texto do resultado
  result = document.getElementById('result')
  result.textContent = 'Resultado: '

# Função para realizar a soma
sum = () ->
  inputA = parseFloat(document.getElementById('inputA').value)
  inputB = parseFloat(document.getElementById('inputB').value)
  result = inputA + inputB
  document.getElementById('result').textContent = 'Resultado: ' + result

# Função para realizar a divisão
divide = () ->
  inputA = parseFloat(document.getElementById('inputA').value)
  inputB = parseFloat(document.getElementById('inputB').value)
  if inputB != 0
    result = inputA / inputB
    document.getElementById('result').textContent = 'Resultado: ' + result
  else
    document.getElementById('result').textContent = 'Resultado: Divisão por zero'

# Função para realizar a multiplicação
multiply = () ->
  inputA = parseFloat(document.getElementById('inputA').value)
  inputB = parseFloat(document.getElementById('inputB').value)
  result = inputA * inputB
  document.getElementById('result').textContent = 'Resultado: ' + result

# Event listeners para os botões
document.getElementById('sum').addEventListener('click', sum)
document.getElementById('divide').addEventListener('click', divide)
document.getElementById('multiply').addEventListener('click', multiply)

# Chamar a função para desenhar o cubo quando a página carregar
window.onload = drawCube
