<section id="menu" class="section">
<table class="table table-primary font4">
  <thead>
    <tr>
      <th scope="col-3">ID</th>
      <th scope="col-3">Title</th>
      <th scope="col-3">Description</th>
      <th scope="col-3">Price</th>
    </tr>
  </thead>
  <tbody>
	<?php
		$cards = mysqli_query($link,"SELECT * FROM `cards`");
		$cards = mysqli_fetch_all($cards);
		foreach ($cards as $card)
		{
    ?>
    <tr>
      <th scope="row"><?= $card[0]?></th>
      <td><?= $card[1]?></td>
      <td><?= $card[3]?></td>
      <td><?= $card[2]?></td>
	  <td><a href="view.php?id=<?= $card[0] ?>">VIEW<img src="photos/vi.png" width="20px"></a></td>
	  <td><a href="update.php?id=<?= $card[0] ?>">UPD<img src="photos/ch.png" width="20px"></a></td>	
	  <td><a style="color:red" href="vendor/delete.php?id=<?= $card[0] ?>">DEL<img src="photos/del.png" width="22px"></a></td>
	</tr>
	<?php
	}
    ?>
  </tbody>
</table>