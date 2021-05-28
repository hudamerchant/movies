<?php 

$timmer = get_option('timmer_data');

?>

<table border style="width:100%;">
  <thead>
    <tr>
      <th>
       Title
      </th>
      <th>
        Date and Time
      </th>
      <th>
        After Expire Option
      </th>
      <th>
        After Expire Message
      </th>
      <th>
        Action
      </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <?php echo $timmer['title']; ?>
      </td>
      <td>
        <?php echo $timmer['date']; ?>
      </td>
      <td>
        <?php echo $timmer['expire']; ?>
      </td>
      <td>
        <?php echo $timmer['expiry_msg']; ?>
      </td>
      <td>
        <a href="">Edit</a>
      </td>
    </tr>
  </tbody>
</table>