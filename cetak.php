<?php

require_once __DIR__ . '/vendor/autoload.php';

$mpdf = new \Mpdf\Mpdf();
$mpdf->WriteHTML('
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kertas</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="vendor/mpdf/mpdf/data/mpdf.cs">
</head>

<body>
    <div class="paper">
        <div class="a4">
            <div class="p">
                    <b>UNIVERSITAS MUHAMMADIYAH SURAKARTA</b><br>
                    <b>FAKULTAS KOMUNIKASI DAN INFORMATIKA</b><br>
                    <b>FORUM OPEN SOURCE TEKNIK INFORMATIKA</b>
            </div>
            <div class="padding-header2">
                <h>Gedung J Lantai 3 Sayap Kanan Fakultas Komunikasi dan Informatika UMS </h><br>
                <h>Jl.A.Yani Tromol Pos 1 Pabelan, Surakarta 57201 </h>
            </div>
        </div>
        <div class="isi justify">
        <p class="menjorok">Sehubungan dengan akan diadakannya kegiatan Seminar Nasional dan Workshop
“Secure Mobile Apps for Startup” oleh Forum Open Source Teknik Informatika Universitas
Muhammadiyah Surakarta (FOSTI UMS) pada :</p>
        </div>
    </div>
</body>');
$mpdf->Output();