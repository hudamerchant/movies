<div class="container">
    <form method="POST" id="new_timmer" class="form-horizontal">
    <div class="form-group">
        <label class="control-label col-sm-2" for="title">Add Timer title</label>
        <div class="col-sm-10">
        <input class="form-control" type="text" name="title" id="title">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="date">Set start date and time</label>
        <div class="col-sm-10">
        <input class="form-control" type="datetime-local" name="date" id="date">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="after-expire">After Expiry</label>
        <div class="col-sm-10">
        <select class="form-control" name="expire" id="after_expire">
        <option value="">Select Options</option>
        <option value="hide">Hide</option>
        <option value="message">Show Message</option>
        </select>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
        <textarea class="form-control" name="expiry-msg" id="expiry-msg"></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-10">
        <input class="btn btn-success" type="submit" name="submit" value="Submit" id="submit-btn">
        </div>
    </div>
    </form>
</div>

<?php
// require 'my_functions.php';
if(isset($_POST['submit']))
{
    $title          = $_POST['title'];
    $time           = $_POST['date'];
    $after_expiry   = $_POST['expire'];
    $message        = $_POST['expiry-msg'];
    $created_at     = date("Y-m-d H:i:s");

    insertdata_in_database($title, $time, $after_expiry, $message, $created_at);
 
}