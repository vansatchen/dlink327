<?php
  $panelsource = new Pactlsource();
  if(isset($_REQUEST['id'])){
	  if(isset($_REQUEST['volume']))
	  {
		$panelsource->setVolume($_REQUEST['id'],$_REQUEST['volume']);
	  }
	  if(isset($_REQUEST['mute'])){
		  $panelsource->setMute($_REQUEST['id'],$_REQUEST['mute']);
	  }
	  if(isset($_REQUEST['source'])){
		  $panelsource->move($_REQUEST['id'],$_REQUEST['source']);
	  }
	  unset($panelsource);
	  $panelsource = new Pactlsource();
	}
	echo json_encode(objectToArray($panelsource));

  class Pactlsource {
	const LANG = "LANG=C";
	const CMD = "pactl";
	public $sources = array();
	public $inputs = array();
	
	public function __construct(){
		$this->update();
	}
	
	private function clear() {
		foreach($this->sources as $key => &$value){
			unset($this->sources[$key]);
		}
		unset($value);
		foreach($this->inputs as $key => &$value){
			unset($this->inputs[$key]);
		}
		unset($value);
	}
	
	private function update() {
		$this->clear();
		
		//Create input sources
		exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "list" . " " . SourceInput::CMD, $output);
		$filteredOutput = array_filter($output,"SourceInput::source_inputs_filter");
		$filteredOutput = array_values($filteredOutput);
		array_walk($filteredOutput, create_function('&$val', '$val = ltrim($val);')); 
		$filteredOutput = array_chunk($filteredOutput, 5);
		foreach($filteredOutput as $sourceInput){
			// Source number = array key
			$id = substr($sourceInput[0], strpos($sourceInput[0], "#")+1);
			$this->inputs[$id] = new SourceInput($sourceInput);
		}
		unset($output);
		unset($filteredOutput);
		unset($id);
		
		//Create output sources
		exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "list" . " " . Source::CMD, $output);
		$filteredOutput = array_filter($output,"Source::sources_filter");
		$filteredOutput = array_values($filteredOutput);
		array_walk($filteredOutput, create_function('&$val', '$val = ltrim($val);')); 
		$filteredOutput = array_chunk($filteredOutput, 4);
		foreach($filteredOutput as $source){
			// Source number = array key
			$id = substr($source[0], strpos($source[0], "#")+1);
			$this->sources[$id] = new Source($source);
		}
	}
	
	public function setVolume($id,$volume) {
		if(substr($id,0,1)==="s"){
			$this->sources[substr($id,1)]->setVolume($volume);
		}else{
			$this->inputs[substr($id,1)]->setVolume($volume);
		}
		$this->update();
	}
	
	public function setMute($id,$mute) {
		if(substr($id,0,1)==="s"){
			$this->sources[substr($id,1)]->setMute($mute);
		}else{
			$this->inputs[substr($id,1)]->setMute($mute);
		}
		$this->update();
	}
	
	public function move($id,$source) {
		$this->inputs[substr($id,1)]->move(substr($source,1));
		$this->update();
	}
  }
	
	class Source {
		const CMD = "sources";
		public $id;
		public $description;
		public $mute;
		public $volume;
		
		public function __construct($data){
   		    // Source input number
			$this->id = substr($data[0], strpos($data[0], "#")+1);
			// Source description
			$this->description = substr($data[1], strpos($data[1], ":")+2);
			// Mute
			$this->mute = substr($data[2], strpos($data[2], ":")+2);
			// Volume
			preg_match_all('/([\d]+%)/', $data[3], $volumes);
			array_walk($volumes[0], create_function('&$val', '$val = rtrim($val,"%");'));
			$this->volume = array_sum($volumes[0]) / count($volumes[0]);
		}
		public function setVolume($value) {
			exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "set-source-volume" . " " . $this->id . " " . $value . "%");
		}
		public function setMute($value) {
			exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "set-source-mute" . " " . $this->id . " " . $value);
		}
		
		static public function sources_filter($data){
			$elements = array(
					"Source",
					"Description",
					"Mute",
					"Volume"
				);
			$contained = false;
			foreach($elements as &$element)
			{
				if(strpos(ltrim($data),$element) === 0){
					$contained = true;
				}
			}
			return $contained;
		}
	}
	
	
	class SourceInput {
		const CMD = "source-inputs";
		public $id;
		public $source;
		public $mute;
		public $volume;
		public $name;

		public function __construct($data){
		   // Source input number
			$this->id = substr($data[0], strpos($data[0], "#")+1);
			// Source number
			$this->source = substr($data[1], strpos($data[1], ":")+2);
			// Mute
			$this->mute = substr($data[2], strpos($data[2], ":")+2);
			// Volume
			//$this->volume = substr($data[3], strpos($data[3], ":")+2);
			preg_match_all('/([\d]+%)/', $data[3], $volumes);
			array_walk($volumes[0], create_function('&$val', '$val = rtrim($val,"%");'));
			$this->volume = array_sum($volumes[0]) / count($volumes[0]);
			// Name
			$this->name = trim(substr($data[4], strpos($data[4], "=")+3), '"');
		}
		public function setVolume($value) {
			exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "set-source-input-volume" . " " . $this->id . " " . $value . "%");
		}
		public function setMute($value) {
			exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "set-source-input-mute" . " " . $this->id . " " . $value);
		}
		
		public function move($value) {
			exec(Pactlsource::LANG . " " . Pactlsource::CMD . " " . "move-source-input" . " " . $this->id . " " . $value);
		}
		
		
		static public function source_inputs_filter($data){
			$elements = array(
					"Source Input",
					"Source:",
					"Mute",
					"Volume:",
					"application.name"
				);
			$contained = false;
			foreach($elements as &$element)
			{
				if(strpos(ltrim($data),$element) === 0){
					$contained = true;
				}
			}
			return $contained;
		}
	}

function objectToArray($d) {
	if (is_object($d)) {
		// Gets the properties of the object
		$d = get_object_vars($d);
	}

	if (is_array($d)) {
		return array_map(__FUNCTION__, $d);
	} else {
		// Return array
		return $d;
	}
}

?>
