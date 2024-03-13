/// @description 

//draw nothing until player has 1 power
if not (burgerPower || raidPower || shavePower || phonePower || datingPower || wandPower || runnerPower || clashPower || skinPower || bugPower || crashPower || BSODPower){return}

var leftX = 0
var rightX = 100
var teaseSize = 90
var upY = 250
var lowerY = 300
var midY = (lowerY - upY) /2
var spacing = 65
var mainColor = c_purple
var commonColor = c_green
var rareColor = c_blue
var epicColor = c_yellow
var mouseX = device_mouse_x_to_gui(0)
var mouseY = device_mouse_y_to_gui(0)
draw_set_font(f_timerText)
draw_set_valign(fa_bottom)


if(burgerPower){
	draw_rectangle_color(leftX, upY + spacing*0, rightX, lowerY + spacing*0, mainColor, commonColor, mainColor, mainColor, false)
	draw_sprite_ext(burgerSprite, 0, 50, upY + spacing*0 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*0 && mouseY <= lowerY + spacing*0){
		var hint = "Burgers that hurt"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*0, rightX - teaseSize, lowerY + spacing*0, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(raidPower){
	draw_rectangle_color(leftX, upY + spacing*1, rightX, lowerY + spacing*1, mainColor, commonColor, mainColor, mainColor, false)
	draw_sprite_ext(raidSprite, 0, 50, upY + spacing*1 + midY, 1, 1, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*1 && mouseY <= lowerY + spacing*1){
		var hint = "Don't get close"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*1, rightX - teaseSize, lowerY + spacing*1, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(shavePower){
	draw_rectangle_color(leftX, upY + spacing*2, rightX, lowerY + spacing*2, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(shaveSprite, 0, 50, upY + spacing*2 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*2 && mouseY <= lowerY + spacing*2){
		var hint = "Cut them down"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*2, rightX - teaseSize, lowerY + spacing*2, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(phonePower){
	draw_rectangle_color(leftX, upY + spacing*3, rightX, lowerY + spacing*3, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(phoneSprite, 0, 50, upY + spacing*3 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*3 && mouseY <= lowerY + spacing*3){
		var hint = "Who's calling?"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*3, rightX - teaseSize, lowerY + spacing*3, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(datingPower){
	draw_rectangle_color(leftX, upY + spacing*4, rightX, lowerY + spacing*4, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(datingSprite, 0, 50, upY + spacing*4 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*4 && mouseY <= lowerY + spacing*4){
		var hint = "Love heals"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*4, rightX - teaseSize, lowerY + spacing*4, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(wandPower){
	draw_rectangle_color(leftX, upY + spacing*5, rightX, lowerY + spacing*5, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(wandSprite, 0, 50, upY + spacing*5+ midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*5 && mouseY <= lowerY + spacing*5){
		var hint = "Bigger size = more spells"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*5, rightX - teaseSize, lowerY + spacing*5, mainColor, commonColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(runnerPower){
	draw_rectangle_color(leftX, upY + spacing*6, rightX, lowerY + spacing*6, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(runnerSprite, 0, 50, upY + spacing*6 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*6 && mouseY <= lowerY + spacing*6){
		var hint = "Protects the toes"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*6, rightX - teaseSize, lowerY + spacing*6, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(clashPower){
	draw_rectangle_color(leftX, upY + spacing*7, rightX, lowerY + spacing*7, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(clashSprite, 0, 50, upY + spacing*7 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*7 && mouseY <= lowerY + spacing*7){
		var hint = "Speedy music"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*7, rightX - teaseSize, lowerY + spacing*7, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(skinPower){
	draw_rectangle_color(leftX, upY + spacing*8, rightX, lowerY + spacing*8, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(skinSprite, 0, 50, upY + spacing*8 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*8 && mouseY <= lowerY + spacing*8){
		var hint = "Lotion reflects pain"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*8, rightX - teaseSize, lowerY + spacing*8, mainColor, rareColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(bugPower){
	draw_rectangle_color(leftX, upY + spacing*9, rightX, lowerY + spacing*9, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(bugSprite, 0, 50, upY + spacing*9 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*9 && mouseY <= lowerY + spacing*9){
		var hint = "Slows down enemies"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*9, rightX - teaseSize, lowerY + spacing*9, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(crashPower){
	draw_rectangle_color(leftX, upY + spacing*10, rightX, lowerY + spacing*10, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(crashSprite, 0, 50, upY + spacing*10 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*10 && mouseY <= lowerY + spacing*10){
		var hint = "Enemies hurt less"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*10, rightX - teaseSize, lowerY + spacing*10, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
}

if(BSODPower){
	draw_rectangle_color(leftX, upY + spacing*11, rightX, lowerY + spacing*11, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
	draw_sprite_ext(BSODSprite, 0, 50, upY + spacing*11 + midY, 4, 4, 0, c_white, 1)
	if(mouseX >= 0 && mouseX <= rightX && mouseY >= upY + spacing*11 && mouseY <= lowerY + spacing*11){
		var hint = "Hurts all enemies in sight"
		draw_text_transformed_color(mouseX, mouseY, hint, 0.75, 0.75, 0, c_white, c_white, c_white, c_white, 1)
	}
} else {
	draw_rectangle_color(leftX, upY + spacing*11, rightX - teaseSize, lowerY + spacing*11, mainColor, epicColor, mainColor, mainColor, false) //what a tease, more powers await
}

draw_set_font(-1)
draw_set_valign(-1)



