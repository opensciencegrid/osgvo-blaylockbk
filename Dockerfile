FROM opensciencegrid/osgvo-el7

RUN yum -y upgrade

RUN yum -y install \
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

RUN pip install --upgrade pip

# pyproj and pygrib
RUN pip install --upgrade numpy
RUN pip install --upgrade pyproj
RUN pip install --upgrade pygrib

# build info
RUN echo "Timestamp:" `date --utc` | tee /image-build-info.txt

