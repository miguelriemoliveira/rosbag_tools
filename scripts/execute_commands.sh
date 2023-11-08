#!/bin/bash

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb1.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir1.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge1.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb2.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir2.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge2.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb3.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir3.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge3.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb4.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir4.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge4.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb5.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir5.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge5.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb6.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir6.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge6.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb7.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir7.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge7.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb8.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir8.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge8.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb9.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir9.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge9.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb10.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir10.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge10.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb11.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir11.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge11.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb12.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir12.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge12.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb13.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir13.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge13.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb14.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir14.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge14.bag

python merge_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/rgb15.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/ir15.bag -bfo /home/daniela/bagfiles/camerabot/openni/merge15.bag


python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/merge1.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge2.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat1.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat1.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge3.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat2.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat2.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge4.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat3.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat3.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge5.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat4.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat4.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge6.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat5.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat5.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge7.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat6.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat6.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge9.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat7.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat7.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge10.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat8.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat8.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge11.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat9.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat9.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge12.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat10.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat10.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge13.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat11.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat11.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge14.bag -bfo /home/daniela/bagfiles/camerabot/openni/concat12.bag

python concatenate_bags -bfi1 /home/daniela/bagfiles/camerabot/openni/concat12.bag -bfi2 /home/daniela/bagfiles/camerabot/openni/merge15.bag -bfo /home/daniela/bagfiles/camerabot/openni/final.bag
