<!DOCTYPE html>
<html lang="en">
<head>
    <title>Document</title>
    <style>
        .kotak{
            width: 70px;
            height: 70px;
            background-color: pink;
            text-align: center;
            line-height: 70px;
            float: left;
            margin: 10px;
            font-size: 1.4rem;
            transition: 1s;
            cursor: pointer;
        }
        .kotak:hover{
            transform: rotate(360deg);
        }
    </style>
</head>
<body>
    <?php
        $angka = [1,2,3,4,5,6,7,8,9];
    ?>

    <?php foreach ($angka as $as) : ?>
    <div class="kotak">
        <?= $as; ?>
    </div>
    <?php endforeach; ?>


</body>
</html>