var lugar = 1;

function mas(){
    lugar++;
    if(lugar>4){
        lugar=1;
    }
    cambio();
}
function menos(){
    lugar--;
    if(lugar<1){
        lugar=4;
    }
    cambio();
}
function cambio(){
    if(lugar === 1){
        document.getElementById('imgbtn1').style.border = '3px solid gray';
        document.getElementById('imgbtn2').style.border = '3px solid transparent';
        document.getElementById('imgbtn3').style.border = '3px solid transparent';
        document.getElementById('imgbtn4').style.border = '3px solid transparent';
        document.getElementById('img1').style.display = 'block';
        document.getElementById('img2').style.display = 'none';
        document.getElementById('img3').style.display = 'none';
        document.getElementById('img4').style.display = 'none';
    }
    else{
        if(lugar === 2){
            document.getElementById('imgbtn1').style.border = '3px solid transparent';
            document.getElementById('imgbtn2').style.border = '3px solid gray';
            document.getElementById('imgbtn3').style.border = '3px solid transparent';
            document.getElementById('imgbtn4').style.border = '3px solid transparent';
            document.getElementById('img1').style.display = 'none';
            document.getElementById('img2').style.display = 'block';
            document.getElementById('img3').style.display = 'none';
            document.getElementById('img4').style.display = 'none';
        }
        else{
            if(lugar === 3){
                document.getElementById('imgbtn1').style.border = '3px solid transparent';
                document.getElementById('imgbtn2').style.border = '3px solid transparent';
                document.getElementById('imgbtn3').style.border = '3px solid gray';
                document.getElementById('imgbtn4').style.border = '3px solid transparent';
                document.getElementById('img1').style.display = 'none';
                document.getElementById('img2').style.display = 'none';
                document.getElementById('img3').style.display = 'block';
                document.getElementById('img4').style.display = 'none';
            }
            else{
                document.getElementById('imgbtn1').style.border = '3px solid transparent';
                document.getElementById('imgbtn2').style.border = '3px solid transparent';
                document.getElementById('imgbtn3').style.border = '3px solid transparent';
                document.getElementById('imgbtn4').style.border = '3px solid gray';
                document.getElementById('img1').style.display = 'none';
                document.getElementById('img2').style.display = 'none';
                document.getElementById('img3').style.display = 'none';
                document.getElementById('img4').style.display = 'block';
            }
        }
    }
}
function uno(){
    lugar = 1;
    document.getElementById('imgbtn1').style.border = '3px solid gray';
    document.getElementById('imgbtn2').style.border = '3px solid transparent';
    document.getElementById('imgbtn3').style.border = '3px solid transparent';
    document.getElementById('imgbtn4').style.border = '3px solid transparent';
    document.getElementById('img1').style.display = 'block';
    document.getElementById('img2').style.display = 'none';
    document.getElementById('img3').style.display = 'none';
    document.getElementById('img4').style.display = 'none';
}
function dos(){
    lugar = 2;
    document.getElementById('imgbtn1').style.border = '3px solid transparent';
    document.getElementById('imgbtn2').style.border = '3px solid gray';
    document.getElementById('imgbtn3').style.border = '3px solid transparent';
    document.getElementById('imgbtn4').style.border = '3px solid transparent';
    document.getElementById('img1').style.display = 'none';
    document.getElementById('img2').style.display = 'block';
    document.getElementById('img3').style.display = 'none';
    document.getElementById('img4').style.display = 'none';
}
function tres(){
    lugar = 3;
    document.getElementById('imgbtn1').style.border = '3px solid transparent';
    document.getElementById('imgbtn2').style.border = '3px solid transparent';
    document.getElementById('imgbtn3').style.border = '3px solid gray';
    document.getElementById('imgbtn4').style.border = '3px solid transparent';
    document.getElementById('img1').style.display = 'none';
    document.getElementById('img2').style.display = 'none';
    document.getElementById('img3').style.display = 'block';
    document.getElementById('img4').style.display = 'none';
}
function cuatro(){
    lugar = 4;
    document.getElementById('imgbtn1').style.border = '3px solid transparent';
    document.getElementById('imgbtn2').style.border = '3px solid transparent';
    document.getElementById('imgbtn3').style.border = '3px solid transparent';
    document.getElementById('imgbtn4').style.border = '3px solid gray';
    document.getElementById('img1').style.display = 'none';
    document.getElementById('img2').style.display = 'none';
    document.getElementById('img3').style.display = 'none';
    document.getElementById('img4').style.display = 'block';
}