function energySaver() {
    if (!$("#switch3").is(":checked")) {
        // do something if the checkbox is NOT checked
   
        $("#energySaver :input").attr("disabled", true);
    }  else {
        $("#energySaver :input").attr("disabled", false);
    }
      
        
}
function motionSensor() {
    if (!$("#switch").is(":checked")) {
        // do something if the checkbox is NOT checked
        $("#motionsensor :input").attr("disabled", true);

        $("#motionsensordiv :input").attr("disabled", true);
    } else {
        $("#motionsensordiv :input").attr("disabled", false);
    }


}

    
