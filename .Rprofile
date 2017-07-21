grDevices::X11.options(width = 16, height = 16, pointsize = 24)
library(colorout)
setOutputColors(normal = 2, negnum = 0, zero = 3, number = 3, date = 3,
  string = 6, const = 1, false = c(1, 0, 0), true = c(1, 0, 2), infinite = 5,
  stderror = 4, warn = c(4, 0, 7), error = c(1, 0, 1), verbose = FALSE,
  zero.limit = NA)

setHook(packageEvent("grDevices", "onLoad"),
        function(...) grDevices::X11.options(width = 16, height = 16,
                                             pointsize = 24))

q <- function (save="no", ...) {
  quit(save=save, ...)
}
options(width = system("tput cols", intern = TRUE))


# if(interactive()){
#        # Suggested libraries:
#        library(colorout)
#
#        # Use text based web browser to navigate through R docs after help.start()
#        # if you cannot run a graphical web browser (e.g. when you are in the
#        # Linux console):
#         if(Sys.getenv("DISPLAY") == ""){
#             if(Sys.getenv("TMUX") != "")
#                 options(browser = function(u) system(paste0("tmux new-window 'w3m ", u, "'")))
#             else if(Sys.getenv("NVIMR_TMPDIR") != "")
#                 options(browser = function(u) .C("nvimcom_msg_to_nvim",
#                                                  paste0('StartTxtBrowser("w3m", "', u, '")')))
#         }
# }
