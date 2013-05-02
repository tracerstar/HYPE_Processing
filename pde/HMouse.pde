public static class HMouse implements HGoal {
	private PApplet _app;
	private boolean _started;
	public HMouse(PApplet app) {
		_app = app;
	}
	public boolean started() {
		return _started;
	}
	public void handleEvents() {
		if(!_started && _app.pmouseX+_app.pmouseY > 0)
			_started = true;
	}
	public float followableX() {
		return _app.mouseX;
	}
	public float followableY() {
		return _app.mouseY;
	}
	public float x() {
		return _app.mouseX;
	}
	public float y() {
		return _app.mouseY;
	}
	public HMouse move(float dx, float dy) {
		return this;
	}
}