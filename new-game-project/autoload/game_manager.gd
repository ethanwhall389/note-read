extends Node

var current_level = 1

const Staff_Line_Height = 8.0

const Levels = {
	1: [{"note": "G1"}, {"note": "C1"}, {"emphasis_indexes": [1]}],
	2: [{"note": "G1"}, {"note": "C2"}, {"note": "B1"}, {"emphasis": ["B1"]}],
}

const Difficulty_Level = {
	"beginner": 10,
	"intermediate": 30,
	"advanced": 60
}
