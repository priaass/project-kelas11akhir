<?php 
include '../asset/header.php';
include '../asset/koneksi.php';

session_start();
if (!isset($_SESSION['user_id'])) {
    echo "<script> alert('Anda harus log in untuk mengakses halaman ini!');
    window.location.href='../index.php';</script>";
    exit();
}

// Ambil ID pengguna yang sedang login dari sesi
$user_id = $_SESSION['user_id'];

?>

<link rel="stylesheet" href="css/style1.css">
<div class="container">
    <div class="container-tabel">
        <div class="title">
            <h2>Cek Order</h2>
        </div>
        <br><br>
        <table>
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Pelanggan</th>
                <th>No Hp</th>
                <th>Alamat</th>
                <th>Paket</th>
                <th>Waktu Kerja</th>
                <th>Berat (Kg)</th>
                <th>tgl. Selesai</th>
                <th>Harga</th>
                <th>Status</th>
                <th>OPSI</th>
            </tr>
            <?php
                // Query untuk mengambil data transaksi hanya untuk pengguna yang sedang login
                $data = mysqli_query($koneksi, "SELECT * FROM users_, tr_cuci_satuan WHERE users_.id = '$user_id'");
                $no = 1;
                while($d = mysqli_fetch_array($data)) { ?>
            <tr>
                <td><h4><?php echo $no++; ?></h4></td>
                <td><?php echo $d['tgl_masuk']; ?></td>
                <td><?php echo $d['username']; ?></td>
                <td><?php echo $d['no_hp']; ?></td>
                <td><?php echo $d['alamat']; ?></td>
                <!-- <td><?php echo $d['paket_id']; ?></td> -->
                <td>
                <?php
                        if($d['paket_id'] == "1"){
                            echo "<div class='label'>Jaket Kulit</div>";
                        } else if($d['paket_id'] == "2"){
                            echo "<div class='label'>Jaket Non Kulit</div>";
                        } else if($d['paket_id'] == "3"){
                            echo "<div class='label'>Boneka Kecil</div>";
                        }else if($d['paket_id'] == "4"){
                            echo "<div class='label'>Boneka Sedang</div>";
                        }else if($d['paket_id'] == "5"){
                            echo "<div class='label'>Boneka Besar</div>";
                        }else if($d['paket_id'] == "6"){
                            echo "<div class='label'>Sejadah</div>";
                        }else if($d['paket_id'] == "7"){
                            echo "<div class='label'>Selimut</div>";
                        }
                    ?>
                </td>
                <td><?php echo $d['waktu']; ?> Jam</td>
                <td><?php echo $d['jumlah']; ?></td>
                <td><?php echo $d['tgl_keluar']; ?></td>
                <td class="harga"><?php echo "Rp. " . number_format($d['total_bayar']) . " ,-"; ?></td>
                <td>
                    <?php
                        if($d['status'] == "0"){
                            echo "<div class='label-proses'>PROSES</div>";
                        } else if($d['status'] == "1"){
                            echo "<div class='label-dicuci'>DICUCI</div>";
                        } else if($d['status'] == "2"){
                            echo "<div class='label-selesai'>SELESAI</div>";
                        }
                    ?>
                </td>
                <td class="opsi">
                    <a href="ts_invoice.php?id=<?php echo $d['id']; ?>" target="_blank" class="btn"><img src="img/eye.png" width="40px"></a>
                </td>
            </tr>
            <?php
                } ?>
        </table>
    </div>
</div>
<?php include '../asset/footer.php'; ?>
</body>
</html>

