# the-rimboy 3d printed tap handle

Originally scanned from @rimboy sometime circa 2013-2014. The original STL has been kept here for posterity, along with the original x3d for the Makerbot 2.

Updates have been made to repair the model as well as modernize to allow for slicing.

## Changelog

### 2025-05-10

- Added beer_tap_handle_rimboy_v2

This update fixes the mesh via Autodesk Fusion 360 by applying the "Stitch and Fill" mesh repair. This fixes the bottom half of the model and fills it in so it is no longer hollow, and fixes many of the hair bits that are actually "open", most likely from scans taken that didn't fully get the entirety of @rimboy's hair texture. The downside is that this makes it such that the built-in tap handle is removed. This is addressed in subsequent 3mf files.

- Added beer_tap_handle_rimboy_2025.3mf

This update includes a few items to replicate the original slicing that happened originally with the Makerbot software. The 3mf includes the ["Tap Handle Basic" from Printables](https://www.printables.com/model/498966-print-in-place-beer-tap-handle/files) and has it strategically placed to not intersect outside of @rimboy's profile. In addition, to ensure a good slice, a generic negative cylinder is added in the same location as the tap handle. However, it cannot be merged into the main model or else slicers intepret it as a solid block.

Recommended Print Settings:
- .2mm print height
- 15% infill
- Organic Supports
- Gyroid Infill
