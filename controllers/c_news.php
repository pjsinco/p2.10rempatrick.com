<?php  

class news_controller extends base_controller {

  public function index() {
    $results = Utils::curl('http://news.yahoo.com/rss/');
    $results = Utils::xml_to_array($results);

    $items = $results['channel']['item'];
    echo Debug::dump($items, 'Results');
    
    foreach ($items as $item) {
      echo $item['title'] . '<br>';
    }

  }

}

?>
