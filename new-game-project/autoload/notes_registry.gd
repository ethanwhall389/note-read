extends Node

const notes = {
	"C1": {"name": "C", "staff_position": 4, "ledger_through": true, "ledgers_above":  true, "ledgers": 2, "stem_up": true},
	"D1": {"name": "D", "staff_position": 3, "ledger_through": false, "ledgers_above":  true, "ledgers": 1, "stem_up": true},
	"E1": {"name": "E", "staff_position": 2, "ledger_through": true, "ledgers_above":  true, "ledgers": 1, "stem_up": true},
	"F1": {"name": "F", "staff_position": 1, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": true},
	"G1": {"name": "G", "staff_position": 0, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": true},
	"A1": {"name": "A", "staff_position": -1, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": true},
	"B1": {"name": "B", "staff_position": -2, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": true},
	"C2": {"name": "C", "staff_position": -3, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": true},
	"D2": {"name": "D", "staff_position": -4, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"E2": {"name": "E", "staff_position": -5, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"F2": {"name": "F", "staff_position": -6, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"G2": {"name": "G", "staff_position": -7, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"A2": {"name": "A", "staff_position": -8, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"B2": {"name": "B", "staff_position": -9, "ledger_through": false, "ledgers_above":  true, "ledgers": 0, "stem_up": false},
	"C3": {"name": "C", "staff_position": -10, "ledger_through": true, "ledgers_above":  false, "ledgers": 1, "stem_up": false},
	"D3": {"name": "D", "staff_position": -11, "ledger_through": false, "ledgers_above":  false, "ledgers": 1, "stem_up": false},
	"E3": {"name": "E", "staff_position": -12, "ledger_through": true, "ledgers_above":  false, "ledgers": 2, "stem_up": false},
	"F3": {"name": "F", "staff_position": -13, "ledger_through": false, "ledgers_above":  false, "ledgers": 2, "stem_up": false},
	"G3": {"name": "G", "staff_position": -14, "ledger_through": true, "ledgers_above":  false, "ledgers": 3, "stem_up": false},
	"A3": {"name": "A", "staff_position": -15, "ledger_through": false, "ledgers_above":  false, "ledgers": 3, "stem_up": false},
}
