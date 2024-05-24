source /data/secrets

if [ -z "${DB_HOST}" ]; then
  echo DB_HOST is missing
  exit 1
fi

if [ -z "${DB_USER}" ]; then
  echo DB_USER is missing
  exit 1
fi

if [ -z "${DB_PASS}" ]; then
  echo DB_PASS is missing
  exit 1
fi

if [ -z "${COMPONENT}" ]; then
  echo COMPONENT is missing
  exit 1
fi

if [ -z "${PROJECT_NAME}" ]; then
  echo PROJECT_NAME is missing
  exit 1
fi

git clone https://github.com/raghudevopsb79/${PROJECT_NAME}-${COMPONENT}
cd ${PROJECT_NAME}-$COMPONENT

mysql -h${DB_HOST} -u${DB_USER} -p${DB_PASS} <schema/${COMPONENT}.sql





