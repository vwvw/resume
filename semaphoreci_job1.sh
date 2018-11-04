docker run -it -v ${SEMAPHORE_PROJECT_DIR}:/var/texlive texlive sh -c "pdflatex resume.tex"
./dropbox_uploader.sh upload resume.pdf ${BRANCH_NAME}/Nicolas-Badoux-Resume_Latest.pdf
./dropbox_uploader.sh upload resume.pdf ${BRANCH_NAME}/Nicolas-Badoux-Resume-v${SEMAPHORE_BUILD_NUMBER}.pdf
docker run -it -v ${SEMAPHORE_PROJECT_DIR}:/var/texlive texlive sh -c "pdflatex resume-french.tex"
./dropbox_uploader.sh upload resume.pdf ${BRANCH_NAME}/Nicolas-Badoux-CV-french_Latest.pdf
./dropbox_uploader.sh upload resume.pdf ${BRANCH_NAME}/Nicolas-Badoux-CV-french-v${SEMAPHORE_BUILD_NUMBER}.pdf
