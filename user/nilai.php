<?php $thisPage="Nilai"; ?>
<?php $title = "Nilai Mahasiswa" ?>
<?php $description = "Nilai Mahasiswa" ?>
<?php 
include("header.php"); 
include("../koneksi.php"); 
?>
	<div class="container">
		<div class="content">
			<h2>Nilai Mahasiswa</h2>
			<hr />

			
			<form class="form-inline" method="get">
				<div class="form-group">
					<select name="filter" class="form-control" onchange="form.submit()">
						<option value="0">Filter Nilai Mahasiswa</option>
						<?php $filter = (isset($_GET['filter']) ? strtolower($_GET['filter']) : NULL);  ?>
						<option value="A" <?php if($filter == 'A'){ echo 'selected'; } ?>>A</option>
						<option value="B" <?php if($filter == 'B'){ echo 'selected'; } ?>>B</option>
                        <option value="C" <?php if($filter == 'C'){ echo 'selected'; } ?>>C</option>
						<option value="D" <?php if($filter == 'D'){ echo 'selected'; } ?>>D</option>
					</select>
				</div>
			</form> 
			<br />
			
			<div class="table-responsive">
				<table class="table table-striped table-hover">
					<tr>
						<th>No</th>
						<th>NIM</th>
						<th>Nama</th>
						<th>Absen</th>
						<th>Tugas</th>
						<th>Uts</th>
						<th>Uas</th>
						<th>Study</th>
						<th>Sks</th>
						<th>Grade</th>
					</tr>
					<?php
					if($filter){
						$sql = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa WHERE grade='$filter' ORDER BY nim ASC"); 
					}else{
						$sql = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa ORDER BY nim ASC"); 
					}
					if(mysqli_num_rows($sql) == 0){ 
						echo '<tr><td colspan="14">Data Tidak Ada.</td></tr>'; 
					}else{ 
						$no = 1; 
						while($row = mysqli_fetch_assoc($sql)){ 
							echo '
							<tr>
								<td>'.$no.'</td>
								<td>'.$row['nim'].'</td>
								<td><a href="profile_mahasiswa.php?nim='.$row['nim'].'">'.$row['nama'].'</a></td>
								<td>'.$row['absen'].'</td>
								<td>'.$row['tugas'].'</td>
								<td>'.$row['uts'].'</td>
								<td>'.$row['uas'].'</td>
								<td>'.$row['study'].'</td>
								<td>'.$row['sks'].'</td>
								<td>';
								if($row['grade'] == 'A'){
									echo '<span class="label label-success">A</span>';
								}
								else if ($row['grade'] == 'B' ){
									echo '<span class="label label-success">B</span>';
								}
								else if ($row['grade'] == 'C' ){
									echo '<span class="label label-success">C</span>';
								}
								else if ($row['grade'] == 'D' ){
									echo '<span class="label label-success">D</span>';
								}
							echo '
								</td>
							</tr>
							';
							$no++; 
						}
					}
					?>
				</table>
			</div> 
		</div> 
	</div> 
<?php 
include("footer.php"); 
?>