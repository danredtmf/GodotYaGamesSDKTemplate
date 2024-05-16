extends Node

var coins = 0

var callback_rewarded_ad = JavaScript.create_callback(self, '_rewarded_ad')
var callback_ad = JavaScript.create_callback(self, '_ad')

onready var win = JavaScript.get_interface("window")

func js_show_ad():
	win.ShowAd(callback_ad)
	# Здесь можно приостановить музыку / звуки

func js_show_rewarded_ad():
	win.ShowAdRewardedVideo(callback_rewarded_ad)
	# Здесь можно приостановить музыку / звуки

func _rewarded_ad(args):
	print(args[0])
	coins += 10
	# Здесь можно возобновить музыку / звуки

func _ad(args):
	if args[0] == "error":
		print("ad error")
	elif args[0] == "close":
		print("ad close")
	# Здесь можно возобновить музыку / звуки
