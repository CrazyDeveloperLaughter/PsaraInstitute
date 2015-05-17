require 'dxruby'

	x = 0
	str = "abcd"
	print str

	#　画像の読み込み

	image = Image.load("data.png")

Window.loop do
	Window.draw(0, 0, image)
end