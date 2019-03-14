# = Class: scylla::repo::yum
#
# Adds the Scylla YUM repo support
#
class scylla::repo::yum {
  yumrepo { 'scylla':
    baseurl  =>  "https://repositories.scylladb.com/scylla/downloads/scylladb/e46d05ba-d2cc-4594-8387-5986145a4eea/scylla/rpm/centos/scylladb-${scylla::major_version}/\$releasever/\$basearch/",
    descr    =>  'Scylla for Centos $releasever - $basearch',
    enabled  =>  1,
    gpgcheck =>  0,
  }

  yumrepo { 'scylla-generic':
    baseurl  =>  "https://repositories.scylladb.com/scylla/downloads/scylladb/e46d05ba-d2cc-4594-8387-5986145a4eea/scylla/rpm/centos/scylladb-${scylla::major_version}/\$releasever/noarch/",
    descr    =>  'Scylla for centos $releasever',
    enabled  =>  1,
    gpgcheck =>  0,
  }

  yumrepo { 'scylla-3rdparty':
    baseurl  =>  "https://copr-be.cloud.fedoraproject.org/results/scylladb/scylla-3rdparty/epel-7-x86_64/",
    descr    =>  'Copr repo for scylla-3rdparty owned by scylladb',
    skip_if_unavailable => 'True',
    gpgcheck =>  1,
    enabled  =>  1,
    gpgkey  =>  'https://copr-be.cloud.fedoraproject.org/results/scylladb/scylla-3rdparty/pubkey.gpg',
    repo_gpgcheck => 0,

  }

}
