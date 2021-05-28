<form method="POST">
  <div>
    <label for="title">Add Timer title</label>
    <input type="text" name="title" id="title">
  </div>
  <div>
    <label for="date">Set start date and time</label>
    <input type="datetime-local" name="date" id="date">
  </div>
  <div>
  <label for="after-expire">After Expiry</label>
  <select name="expire" id="after-expire">
    <option value="">Select Options</option>
    <option value="hide">Hide</option>
    <option value="message">Show Message</option>
  </select>
  </div>
  <div>
    <textarea name="expiry-msg" id="expiry-msg"></textarea>
  </div>
  <div>
    <input type="submit" name="submit" value="Submit">
  </div>
</form>
<?php
if(isset($_POST['submit'])){
  $timer_data = array(
    'title'      => $_POST['title'],
    'date'       => $_POST['date'],
    'expire'     => $_POST['expire'],
    'expiry_msg' => $_POST['expiry-msg'],
  );

  add_option('timmer_data', $timer_data,);
}
?>