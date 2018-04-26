NB. save

NB. =========================================================
ppng=: 3 : 0
if. 0=#y do.
  y=. '~temp/graph.png'
else.
  y=. y, (-. '.png' -: _4 {. y) # '.png'
end.
initwin''
box=. 0 0, glqwh''
res=. glqpixels box
NB. nub=. ~. res
NB. NB. res=. (nub i. res) { 256 #. |."1 [ 256 256 256 #: nub
NB. res=. (nub i. res) { 256 #. |."1 [ 256 256 256 #: nub
png=. (3 2{box) $ res
png writepng jpath y
EMPTY
)
