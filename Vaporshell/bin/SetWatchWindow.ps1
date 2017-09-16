Param
(
  [parameter(Mandatory=$false,Position=0)]
  [String]
  $StackId
)
$pshost = get-host
$pswindow = $pshost.ui.rawui
$pswindow.BackgroundColor = "Black"
$pswindow.WindowTitle = "VaporShell ~ ~ ~ Watching Stack: $StackId"
$newsize = $pswindow.buffersize
$newsize.height = 70
$newsize.width = 180
$pswindow.buffersize = $newsize
$newsize = $pswindow.windowsize
$newsize.height = 39
$newsize.width = 120
$pswindow.windowsize = $newsize