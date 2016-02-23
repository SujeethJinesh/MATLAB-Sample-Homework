function volume = nutVolume(outerradius, innerradius, thickness)
volume = cylVolume(thickness, outerradius) - cylVolume(thickness, innerradius);
end