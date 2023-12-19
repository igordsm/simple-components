import dom

proc tabIndents(e: Event) =
  let kEvt = cast[KeyboardEvent](e)
  let el = cast[InputElement](kEvt.target)

  case kEvt.keyCode:
    of 9:
      kEvt.preventDefault
      let el = cast[InputElement](kEvt.target)
      el.setRangeText cstring("\t"), el.selectionStart, el.selectionEnd, cstring("end")
    # of 13:
    #   kEvt.preventDefault
    else:
      discard

      
   

let longExercises = document.querySelectorAll(".admonition.long textarea")

for l in longExercises:
  l.addEventListener "keydown", tabIndents

