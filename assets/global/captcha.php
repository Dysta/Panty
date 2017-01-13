<?php
session_start();
function nombre($n)
{
    return substr(strtoupper(sha1(time())),0,5);
}
function image($mot)
{
    $largeur = strlen($mot) * 10;
    $hauteur = 20;
    $img = imagecreate($largeur, $hauteur);
    $blanc = imagecolorallocate($img, 255, 0, 0);
	imagecolortransparent($img, $blanc);
    $noir = imagecolorallocate($img, 255, 0, 0);
    $milieuHauteur = ($hauteur / 2) - 3;
    imagestring($img, 6, strlen($mot) /2 , $milieuHauteur, $mot, $noir);
    imagepng($img);
    imagedestroy($img);
}
function captcha()
{
    $mot = nombre(5);
    $_SESSION['captcha'] = $mot;
    image($mot);
}
header("Content-type: image/png");
captcha();
?>