package;

import flixel.FlxG;
import flixel.util.FlxSave;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

class ClientPrefs {
	//TO DO: Redo ClientPrefs in a way that isn't too stupid
	public static var downScroll:Bool = false;
	public static var middleScroll:Bool = false;
	public static var showFPS:Bool = true;
	public static var flashing:Bool = true;
	public static var globalAntialiasing:Bool = true;
	public static var noteSplashes:Bool = true;
	public static var lowQuality:Bool = false;
	public static var framerate:Int = 120;
	public static var cursing:Bool = true;
	public static var violence:Bool = true;
	public static var camZooms:Bool = true;
	public static var hideHud:Bool = false;
	public static var bigArrows:Bool = false;
	public static var rowColors:Bool = false;
	public static var bindQWERTY:Bool = true;
	public static var bindDVORAK:Bool = false;
	public static var bindAZERTY:Bool = false;
	public static var bindCOLEMAK:Bool = false;
	public static var noteOffset:Int = 0;
	public static var arrowHSV:Array<Array<Int>> = [[0, 0, 0], [0, 0, 0], [0, 0, 0], [0, 0, 0]];
	public static var imagesPersist:Bool = false;
	public static var ghostTapping:Bool = true;
	public static var hideTime:Bool = false;

	public static var defaultKeys:Array<FlxKey> = [
		A, LEFT,			//Note Left
		S, DOWN,			//Note Down
		W, UP,				//Note Up
		D, RIGHT,			//Note Right

		A, LEFT,			//UI Left
		S, DOWN,			//UI Down
		W, UP,				//UI Up
		D, RIGHT,			//UI Right

		NONE, NONE,			//Reset
		SPACE, ENTER,		//Accept
		BACKSPACE, ESCAPE,	//Back
		ENTER, ESCAPE,		//Pause

		S, NONE,
		D, NONE,
		F, NONE,
		SPACE, NONE,
		J, LEFT,
		K, DOWN,
		L, RIGHT,

		A, NONE,
		S, NONE,
		D, NONE,
		F, NONE,
		SPACE, NONE,
		H, NONE,
		J, NONE,
		K, NONE,
		L, NONE,

		Q, NONE,
		W, NONE,
		E, NONE,
		R, NONE,
		T, NONE,
		V, NONE,
		SPACE, NONE,
		N, NONE,
		U, NONE,
		I, NONE,
		O, NONE,
		P, NONE,
		LBRACKET, NONE,

		Q, NONE,
		W, NONE,
		E, NONE,
		R, NONE,
		U, NONE,
		I, NONE,
		O, NONE,
		P, NONE,
		A, NONE,
		S, NONE,
		D, NONE,
		F, NONE,
		J, NONE,
		K, NONE,
		L, NONE,
		SEMICOLON, NONE

		// Q, NONE,
		// W, NONE,
		// E, NONE,
		// R, NONE,
		// T, NONE,
		// Y, NONE,
		// U, NONE,
		// I, NONE,
		// O, NONE,
		// P, NONE,
		// A, NONE,
		// S, NONE,
		// D, NONE,
		// F, NONE,
		// G, NONE,
		// H, NONE,
		// J, NONE,
		// K, NONE,
		// L, NONE,
		// Z, NONE,
		// X, NONE,
		// C, NONE,
		// V, NONE,
		// B, NONE,
		// N, NONE,
		// M, NONE,
	];
	//Every key has two binds, these binds are defined on defaultKeys! If you want your control to be changeable, you have to add it on ControlsSubState (inside OptionsState)'s list
	public static var keyBinds:Array<Dynamic> = [
		//Key Bind, Name for ControlsSubState
		[Control.NOTE_LEFT, 'Left'],
		[Control.NOTE_DOWN, 'Down'],
		[Control.NOTE_UP, 'Up'],
		[Control.NOTE_RIGHT, 'Right'],

		[Control.UI_LEFT, 'Left '],		//Added a space for not conflicting on ControlsSubState
		[Control.UI_DOWN, 'Down '],		//Added a space for not conflicting on ControlsSubState
		[Control.UI_UP, 'Up '],			//Added a space for not conflicting on ControlsSubState
		[Control.UI_RIGHT, 'Right '],	//Added a space for not conflicting on ControlsSubState

		[Control.RESET, 'Reset'],
		[Control.ACCEPT, 'Accept'],
		[Control.BACK, 'Back'],
		[Control.PAUSE, 'Pause'],

		[Control.A1, 'Left 1'],
		[Control.A2, 'Up  '],
		[Control.A3, 'Right 1'],
		[Control.A4, 'Center'],
		[Control.A5, 'Left 2'],
		[Control.A6, 'Down  '],
		[Control.A7, 'Right 2'],

		[Control.B1, 'Left 1 '],
		[Control.B2, 'Down 1'],
		[Control.B3, 'Up 1'],
		[Control.B4, 'Right 1 '],
		[Control.B5, 'Center '],
		[Control.B6, 'Left 2 '],
		[Control.B7, 'Down 2'],
		[Control.B8, 'Up 2'],
		[Control.B9, 'Right 2 '],

		[Control.C0, 'Key 1'],
		[Control.C1, 'Key 2'],
		[Control.C2, 'Key 3'],
		[Control.C3, 'Key 4'],
		[Control.C4, 'Key 5'],
		[Control.C5, 'Key 6'],
		[Control.C6, 'Key 7'],
		[Control.C7, 'Key 8'],
		[Control.C8, 'Key 9'],
		[Control.C9, 'Key 10'],
		[Control.C10, 'Key 11'],
		[Control.C11, 'Key 12'],
		[Control.C12, 'Key 13'],

		[Control.G0, 'Key 1 '],
		[Control.G1, 'Key 2 '],
		[Control.G2, 'Key 3 '],
		[Control.G3, 'Key 4 '],
		[Control.G4, 'Key 5 '],
		[Control.G5, 'Key 6 '],
		[Control.G6, 'Key 7 '],
		[Control.G7, 'Key 8 '],
		[Control.G8, 'Key 9 '],
		[Control.G9, 'Key 10 '],
		[Control.G10, 'Key 11 '],
		[Control.G11, 'Key 12 '],
		[Control.G12, 'Key 13 '],
		[Control.G13, 'Key 14 '],
		[Control.G14, 'Key 15 '],
		[Control.G15, 'Key 16 '],

		[Control.F0, 'Key 1 '],
		[Control.F1, 'Key 2 '],
		[Control.F2, 'Key 3 '],
		[Control.F3, 'Key 4 '],
		[Control.F4, 'Key 5 '],
		[Control.F5, 'Key 6 '],
		[Control.F6, 'Key 7 '],
		[Control.F7, 'Key 8 '],
		[Control.F8, 'Key 9 '],
		[Control.F9, 'Key 10 '],
		[Control.F10, 'Key 11 '],
		[Control.F11, 'Key 12 '],
		[Control.F12, 'Key 13 '],
		[Control.F13, 'Key 14 '],
		[Control.F14, 'Key 15 '],
		[Control.F15, 'Key 16 '],
		[Control.F16, 'Key 17 '],
		[Control.F17, 'Key 18 '],
		[Control.F18, 'Key 19 '],
		[Control.F19, 'Key 20 '],
		[Control.F20, 'Key 21 '],
		[Control.F21, 'Key 22 '],
		[Control.F22, 'Key 23 '],
		[Control.F23, 'Key 24 '],
		[Control.F24, 'Key 25 '],
		[Control.F25, 'Key 26 '],
	];
	public static var lastControls:Array<FlxKey> = defaultKeys.copy();

	public static function saveSettings() {
		FlxG.save.data.downScroll = downScroll;
		FlxG.save.data.middleScroll = middleScroll;
		FlxG.save.data.showFPS = showFPS;
		FlxG.save.data.flashing = flashing;
		FlxG.save.data.globalAntialiasing = globalAntialiasing;
		FlxG.save.data.noteSplashes = noteSplashes;
		FlxG.save.data.lowQuality = lowQuality;
		FlxG.save.data.framerate = framerate;
		FlxG.save.data.cursing = cursing;
		FlxG.save.data.violence = violence;
		FlxG.save.data.camZooms = camZooms;
		FlxG.save.data.noteOffset = noteOffset;
		FlxG.save.data.hideHud = hideHud;
		FlxG.save.data.bigArrows = bigArrows;
		FlxG.save.data.rowColors = rowColors;
		FlxG.save.data.bindQWERTY = bindQWERTY;
		FlxG.save.data.bindDVORAK = bindDVORAK;
		FlxG.save.data.bindAZERTY = bindAZERTY;
		FlxG.save.data.bindCOLEMAK = bindCOLEMAK;
		FlxG.save.data.arrowHSV = arrowHSV;
		FlxG.save.data.imagesPersist = imagesPersist;
		FlxG.save.data.ghostTapping = ghostTapping;
		FlxG.save.data.hideTime = hideTime;

		var achieves:Array<String> = [];
		for (i in 0...Achievements.achievementsUnlocked.length) {
			if(Achievements.achievementsUnlocked[i][1]) {
				achieves.push(Achievements.achievementsUnlocked[i][0]);
			}
		}
		FlxG.save.data.achievementsUnlocked = achieves;
		FlxG.save.data.henchmenDeath = Achievements.henchmenDeath;
		FlxG.save.flush();

		var save:FlxSave = new FlxSave();
		save.bind('controls', 'shaggymod'); //Placing this in a separate save so that it can be manually deleted without removing your Score and stuff
		save.data.customControls = lastControls;
		save.flush();
		FlxG.log.add("Settings saved!");
	}

	public static function loadPrefs() {
		if(FlxG.save.data.downScroll != null) {
			downScroll = FlxG.save.data.downScroll;
		}
		if(FlxG.save.data.middleScroll != null) {
			middleScroll = FlxG.save.data.middleScroll;
		}
		if(FlxG.save.data.showFPS != null) {
			showFPS = FlxG.save.data.showFPS;
			if(Main.fpsVar != null) {
				Main.fpsVar.visible = showFPS;
			}
		}
		if(FlxG.save.data.flashing != null) {
			flashing = FlxG.save.data.flashing;
		}
		if(FlxG.save.data.globalAntialiasing != null) {
			globalAntialiasing = FlxG.save.data.globalAntialiasing;
		}
		if(FlxG.save.data.noteSplashes != null) {
			noteSplashes = FlxG.save.data.noteSplashes;
		}
		if(FlxG.save.data.lowQuality != null) {
			lowQuality = FlxG.save.data.lowQuality;
		}
		if(FlxG.save.data.framerate != null) {
			framerate = FlxG.save.data.framerate;
			if(framerate > FlxG.drawFramerate) {
				FlxG.updateFramerate = framerate;
				FlxG.drawFramerate = framerate;
			} else {
				FlxG.drawFramerate = framerate;
				FlxG.updateFramerate = framerate;
			}
		}
		/*if(FlxG.save.data.cursing != null) {
			cursing = FlxG.save.data.cursing;
		}
		if(FlxG.save.data.violence != null) {
			violence = FlxG.save.data.violence;
		}*/
		if(FlxG.save.data.camZooms != null) {
			camZooms = FlxG.save.data.camZooms;
		}
		if(FlxG.save.data.hideHud != null) {
			hideHud = FlxG.save.data.hideHud;
		}
		if(FlxG.save.data.bigArrows != null) {
			bigArrows = FlxG.save.data.bigArrows;
		}
		if(FlxG.save.data.rowColors != null) {
			rowColors = FlxG.save.data.rowColors;
		}
		if(FlxG.save.data.bindQWERTY != null) {
			bindQWERTY = FlxG.save.data.bindQWERTY;
		}
		if(FlxG.save.data.bindDVORAK != null) {
			bindDVORAK = FlxG.save.data.bindDVORAK;
		}
		if(FlxG.save.data.bindAZERTY != null) {
			bindAZERTY = FlxG.save.data.bindAZERTY;
		}
		if(FlxG.save.data.bindCOLEMAK != null) {
			bindCOLEMAK = FlxG.save.data.bindCOLEMAK;
		}
		if(FlxG.save.data.noteOffset != null) {
			noteOffset = FlxG.save.data.noteOffset;
		}
		if(FlxG.save.data.arrowHSV != null) {
			arrowHSV = FlxG.save.data.arrowHSV;
		}
		if(FlxG.save.data.imagesPersist != null) {
			imagesPersist = FlxG.save.data.imagesPersist;
			FlxGraphic.defaultPersist = ClientPrefs.imagesPersist;
		}
		if(FlxG.save.data.ghostTapping != null) {
			ghostTapping = FlxG.save.data.ghostTapping;
		}
		if(FlxG.save.data.hideTime != null) {
			hideTime = FlxG.save.data.hideTime;
		}

		var save:FlxSave = new FlxSave();
		save.bind('controls', 'shaggymod');
		if(save != null && save.data.customControls != null) {
			reloadControls(save.data.customControls);
		}

		if (FlxG.save.data.language == null) FlxG.save.data.languaje = 0;

		FlxG.updateFramerate = framerate;
		FlxG.drawFramerate = framerate;

		FlxG.save.data.noteSkin = [0, 0, 0, 0];
		if (FlxG.save.data.s_FirstBoot == null)
		{
			trace('yasss');
			reloadControls(defaultKeys);
			FlxG.save.data.s_keyWarning = true;
			FlxG.save.data.s_FirstBoot = false;
			FlxG.save.flush();
			saveSettings();
		}
	}

	public static function reloadControls(newKeys:Array<FlxKey>) {
		ClientPrefs.removeControls(ClientPrefs.lastControls);
		ClientPrefs.lastControls = newKeys.copy();
		ClientPrefs.loadControls(ClientPrefs.lastControls);
	}

	private static function removeControls(controlArray:Array<FlxKey>) {
		for (i in 0...keyBinds.length) {
			var controlValue:Int = i*2;
			var controlsToRemove:Array<FlxKey> = [];
			for (j in 0...2) {
				if(controlArray[controlValue+j] != NONE) {
					controlsToRemove.push(controlArray[controlValue+j]);
				}
			}
			if(controlsToRemove.length > 0) {
				PlayerSettings.player1.controls.unbindKeys(keyBinds[i][0], controlsToRemove);
			}
		}
	}
	private static function loadControls(controlArray:Array<FlxKey>) {
		for (i in 0...keyBinds.length) {
			var controlValue:Int = i*2;
			var controlsToAdd:Array<FlxKey> = [];
			for (j in 0...2) {
				if(controlArray[controlValue+j] != NONE) {
					controlsToAdd.push(controlArray[controlValue+j]);
				}
			}
			if(controlsToAdd.length > 0) {
				PlayerSettings.player1.controls.bindKeys(keyBinds[i][0], controlsToAdd);
			}
		}
	}
}