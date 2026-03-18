extends Node

var current_level = 3

const Staff_Line_Height = 12.0

var score = 0

const Levels = {
	1: [{"note": "C1"}, {"note": "D1"}, {"note": "E1"}, {"note": "F1"}, {"note": "G1"}, {"emphasis_indexes": [1]}],
	2: [{"note": "G1"}, {"note": "C2"}, {"note": "B1"}, {"emphasis": ["B1"]}],
	#level 3 for testing all notes
	3: [{"note": "C1"}, {"note": "D1"}, {"note": "E1"}, {"note": "F1"}, {"note": "G1"}, {"note": "A1"}, {"note": "B1"}, {"note": "C2"}, {"note": "D2"}, {"note": "E2"}, {"note": "F2"}, {"note": "G2"}, {"note": "A2"}, {"note": "B2"}, {"note": "C3"}, {"note": "D3"}, {"note": "E3"}, {"note": "F3"}, {"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
	4: [{"note": "C1"}, {"note": "D1"}, {"note": "E1"}, {"note": "C3"}, {"note": "D3"}, {"note": "E3"}, {"note": "F3"}, {"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
	5: [{"note": "G3"}, {"note": "A3"}, {"emphasis_indexes": [1]}],
}

const Difficulty_Level = {
	"beginner": 10,
	"intermediate": 30,
	"advanced": 60
}
