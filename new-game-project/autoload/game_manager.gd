extends Node

var current_level = 1

const Levels = {
	1: [{"note": "G1"}, {"note": "C2"}, {"emphasis": []}],
	2: [{"note": "G1"}, {"note": "C2"}, {"note": "B1"}, {"emphasis": ["B1"]}],
}

const Difficulty_Level = {
	"beginner": 10,
	"intermediate": 30,
	"advanced": 60
}
