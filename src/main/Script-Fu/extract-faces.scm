; GIMP Script-Fu
; this script will iterate through all the layers of of the image
; for each layer it will create textual definition tha can be used by 
; DrawElement procedure from GR0.ACT file
; to register the plugin run:
; ln -s  ./src/main/Script-Fu/extract-faces.scm ~/.config//GIMP/2.10/scripts/

(define (FU-a8-extract-layers
        img
        drawable
        merge-flag)

    (gimp-image-undo-group-start img)
    (if (not (= RGB (car (gimp-image-base-type img))))
             (gimp-image-convert-rgb img))   

   ; Create a new layer
   (define value-layer (car (gimp-layer-copy drawable 0)))

   ; Give it a name
   (gimp-item-set-name value-layer "Contrast Adjustment Layer")

   ; Add the new layer to the image
   (gimp-image-insert-layer img value-layer 0 0)

   ; Set opacity to 100%
   (gimp-layer-set-opacity value-layer 100)

   ; Set the layer mode to Value
   (gimp-layer-set-mode value-layer 14)

   ; Adjust contrast
   (gimp-levels-stretch value-layer)

   ; Merge down, if required
   (if (equal? merge-flag TRUE)
       (gimp-image-merge-down img value-layer 1 )
       ()
   )
   (gimp-image-undo-group-end img)
   (gimp-displays-flush)   
)
(script-fu-register "FU-a8-extract-layers"
    "<Image>/Filters/A8/Extract layers into Action source"
    "Extracts all the layest of the image into Action source code"
    "Jakub Ciepiela"
    "Jakub Ciepiela"
    "2006"
    "*"
    SF-IMAGE    "Image"         0
    SF-DRAWABLE "Current Layer" 0
    SF-TOGGLE   "Merge Layers?" FALSE
)

