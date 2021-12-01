#compile docker run > add files to run docker image

#parallel processing by automatically identifying build dependencies using buildKit

#docker experimental feature 기능
docker image build --squash
if there are many changes to the same file, merge the layers to reduce the image

#docker image build -t sample-image:20.0 .