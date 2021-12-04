tool
extends EditorScript


func _run() -> void:
	# Make new BitmapFont resource
	var bitmap_font:BitmapFont = BitmapFont.new()
	
	# Assign texture to resource
	var texture:Texture = load("res://resources/fonts/chips-sans.png")
	bitmap_font.add_texture(texture)
	
	# Adjust height
	bitmap_font.height = 31
	
	# Manually define letter rect
	
	# Space
	bitmap_font.add_char(32, 0, Rect2(0, 0, 1, 1), Vector2(0, 0), 7)
	
	# Punctuations
	bitmap_font.add_char(44, 0, Rect2(104, 92, 5 , 7 ), Vector2(0, 28-7+3), 6 ) # ,
	bitmap_font.add_char(46, 0, Rect2(110, 92, 4 , 4 ), Vector2(0, 28-4  ), 5 ) # .
	bitmap_font.add_char(63, 0, Rect2(115, 77, 10, 19), Vector2(0, 28-19 ), 11) # ?
	bitmap_font.add_char(33, 0, Rect2(126, 77, 4 , 19), Vector2(0, 28-19 ), 5 ) # !
	
	# A-Z
	bitmap_font.add_char(65, 0, Rect2(0  , 6, 18, 26), Vector2(0, 2), 19) # A
	bitmap_font.add_char(66, 0, Rect2(19 , 5, 15, 27), Vector2(0, 1), 16) # B
	bitmap_font.add_char(67, 0, Rect2(35 , 6, 14, 26), Vector2(0, 2), 15) # C
	bitmap_font.add_char(68, 0, Rect2(50 , 6, 13, 26), Vector2(0, 2), 14) # D
	bitmap_font.add_char(69, 0, Rect2(64 , 5, 12, 27), Vector2(0, 1), 13) # E
	bitmap_font.add_char(70, 0, Rect2(77 , 5, 12, 27), Vector2(0, 1), 13) # F
	bitmap_font.add_char(71, 0, Rect2(90 , 5, 15, 27), Vector2(0, 1), 16) # G
	bitmap_font.add_char(72, 0, Rect2(106, 6, 13, 26), Vector2(0, 2), 14) # H
	bitmap_font.add_char(73, 0, Rect2(120, 6, 4 , 26), Vector2(0, 2), 5 ) # I
	bitmap_font.add_char(74, 0, Rect2(125, 6, 9 , 26), Vector2(0, 2), 10) # J
	bitmap_font.add_char(75, 0, Rect2(135, 7, 11, 25), Vector2(0, 3), 12) # K
	bitmap_font.add_char(76, 0, Rect2(147, 6, 11, 26), Vector2(0, 2), 12) # L
	bitmap_font.add_char(77, 0, Rect2(159, 5, 15, 27), Vector2(0, 1), 16) # M
	bitmap_font.add_char(78, 0, Rect2(175, 6, 15, 26), Vector2(0, 2), 16) # N
	bitmap_font.add_char(79, 0, Rect2(191, 8, 14, 24), Vector2(0, 4), 15) # O
	bitmap_font.add_char(80, 0, Rect2(206, 5, 11, 27), Vector2(0, 1), 11) # P
	bitmap_font.add_char(81, 0, Rect2(218, 6, 17, 26), Vector2(0, 2), 18) # Q
	bitmap_font.add_char(82, 0, Rect2(236, 4, 15, 26), Vector2(0, 2), 16) # R
	bitmap_font.add_char(83, 0, Rect2(252, 5, 12, 27), Vector2(0, 1), 13) # S
	bitmap_font.add_char(84, 0, Rect2(265, 5, 14, 27), Vector2(0, 1), 15) # T
	bitmap_font.add_char(85, 0, Rect2(280, 6, 17, 26), Vector2(0, 2), 18) # U
	bitmap_font.add_char(86, 0, Rect2(298, 6, 17, 26), Vector2(0, 2), 18) # V
	bitmap_font.add_char(87, 0, Rect2(316, 4, 21, 28), Vector2(0, 0), 22) # W
	bitmap_font.add_char(88, 0, Rect2(338, 4, 13, 28), Vector2(0, 0), 14) # X
	bitmap_font.add_char(89, 0, Rect2(352, 5, 13, 27), Vector2(0, 1), 14) # Y
	bitmap_font.add_char(90, 0, Rect2(366, 5, 19, 27), Vector2(0, 1), 20) # Z
	
	# a-z
	bitmap_font.add_char(97 , 0, Rect2(0  , 53, 11, 11), Vector2(0, 28-11  ), 12) # a
	bitmap_font.add_char(98 , 0, Rect2(12 , 45, 9 , 19), Vector2(0, 28-19  ), 10) # b
	bitmap_font.add_char(99 , 0, Rect2(22 , 53, 9 , 11), Vector2(0, 28-11  ), 10) # c
	bitmap_font.add_char(100, 0, Rect2(32 , 47, 10, 17), Vector2(0, 28-17  ), 11) # d
	bitmap_font.add_char(101, 0, Rect2(43 , 52, 10, 12), Vector2(0, 28-12  ), 11) # e
	bitmap_font.add_char(102, 0, Rect2(54 , 44, 8 , 20), Vector2(0, 28-20  ), 9 ) # f
	bitmap_font.add_char(103, 0, Rect2(63 , 55, 9 , 16), Vector2(0, 28-16+7), 10) # g
	bitmap_font.add_char(104, 0, Rect2(73 , 44, 9 , 20), Vector2(0, 28-20  ), 10) # h
	bitmap_font.add_char(105, 0, Rect2(84 , 52, 3 , 12), Vector2(0, 28-12  ), 4 ) # i
	bitmap_font.add_char(106, 0, Rect2(88 , 52, 7 , 20), Vector2(0, 28-20+8), 8 ) # j
	bitmap_font.add_char(107, 0, Rect2(96 , 48, 11, 16), Vector2(0, 28-16  ), 12) # k
	bitmap_font.add_char(108, 0, Rect2(108, 45, 4 , 19), Vector2(0, 28-19  ), 5 ) # l
	bitmap_font.add_char(109, 0, Rect2(113, 55, 13, 9 ), Vector2(0, 28-9   ), 14) # m
	bitmap_font.add_char(110, 0, Rect2(127, 54, 10, 10), Vector2(0, 28-10  ), 11) # n
	bitmap_font.add_char(111, 0, Rect2(138, 54, 8 , 10), Vector2(0, 28-10  ), 9 ) # o
	bitmap_font.add_char(112, 0, Rect2(147, 53, 9 , 19), Vector2(0, 28-19+8), 10) # p
	bitmap_font.add_char(113, 0, Rect2(157, 54, 9 , 16), Vector2(0, 28-16+6), 10) # q
	bitmap_font.add_char(114, 0, Rect2(167, 54, 7 , 10), Vector2(0, 28-10  ), 8 ) # r
	bitmap_font.add_char(115, 0, Rect2(175, 52, 10, 12), Vector2(0, 28-12  ), 11) # s
	bitmap_font.add_char(116, 0, Rect2(186, 48, 12, 16), Vector2(0, 28-16  ), 13) # t
	bitmap_font.add_char(117, 0, Rect2(199, 55, 10, 9 ), Vector2(0, 28-9   ), 11) # u
	bitmap_font.add_char(118, 0, Rect2(210, 53, 8 , 11), Vector2(0, 28-11  ), 9 ) # v
	bitmap_font.add_char(119, 0, Rect2(219, 55, 14, 9 ), Vector2(0, 28-9   ), 15) # w
	bitmap_font.add_char(120, 0, Rect2(234, 53, 9 , 11), Vector2(0, 28-11  ), 10) # x
	bitmap_font.add_char(121, 0, Rect2(244, 54, 10, 15), Vector2(0, 28-15+5), 11) # y
	bitmap_font.add_char(122, 0, Rect2(255, 54, 11, 10), Vector2(0, 28-10  ), 12) # z
	
	# 0-9
	bitmap_font.add_char(48, 0, Rect2(0 , 82, 10, 14), Vector2(0, 28-14), 11) # 0
	bitmap_font.add_char(49, 0, Rect2(11, 81, 7 , 15), Vector2(0, 28-15), 8 ) # 1
	bitmap_font.add_char(50, 0, Rect2(19, 82, 10, 14), Vector2(0, 28-14), 11) # 2
	bitmap_font.add_char(51, 0, Rect2(30, 82, 9 , 14), Vector2(0, 28-14), 10) # 3
	bitmap_font.add_char(52, 0, Rect2(40, 83, 9 , 13), Vector2(0, 28-13), 10) # 4
	bitmap_font.add_char(53, 0, Rect2(51, 83, 9 , 13), Vector2(0, 28-13), 10) # 5
	bitmap_font.add_char(54, 0, Rect2(61, 82, 10, 14), Vector2(0, 28-14), 11) # 6
	bitmap_font.add_char(55, 0, Rect2(72, 82, 9 , 14), Vector2(0, 28-14), 10) # 7
	bitmap_font.add_char(56, 0, Rect2(82, 82, 10, 14), Vector2(0, 28-14), 11) # 8
	bitmap_font.add_char(57, 0, Rect2(93, 82, 10, 14), Vector2(0, 28-14), 11) # 9
	
	# Delete font if exists
	var fonts_dir: Directory = Directory.new()
	fonts_dir.open("res://resources/fonts")
	if fonts_dir.file_exists("chips-sans.tres"):
		fonts_dir.remove("chips-sans.tres")
	
	# Save resource to disk
	ResourceSaver.save("res://resources/fonts/chips-sans.tres", bitmap_font)
