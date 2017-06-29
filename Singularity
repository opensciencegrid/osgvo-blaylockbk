bootstrap:docker
From:opensciencegrid/osgvo-el7

%post

yum -y upgrade

yum -y install \
       grib_api \
       grib_api-devel \
       hdf5 \
       hdf5-devel \
       netcdf \
       netcdf-devel \
       proj \
       proj-devel \
       python-pip \
       wgrib \
       wgrib2

pip install --upgrade pip

# pyproj and pygrib
pip install --upgrade numpy
pip install --upgrade pyproj
pip install --upgrade pygrib

# build info
echo "Timestamp:" `date --utc` | tee /image-build-info.txt

