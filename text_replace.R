#Function for replacing instances of string in text block input or file
string_replace = function(input = NULL, pattern = NULL, replacement = NULL, 
                          dest_file = NULL){
  #input can be file or extended string
  if (file.exists(input)){
    old_text = readLines(input)
    new_text = gsub(pattern = pattern, replacement = replacement, x = old_text)
    if (!is.null(dest_file)){
      write(x = new_text, file = dest_file)
    } else {
      write(x = new_text, file = input)
    }
  }else {
  gsub(pattern = pattern, replacement = replacement, x = input)
  }
}
