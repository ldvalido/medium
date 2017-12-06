SET srcRepoUrl=%1
SET targetRepoUrl=%2
SET srcUserName=%3
SET srcPwd=%4
SET folder=%5
SET repoUrl=%srcRepoUrl%
SET targetFolder=%folder%
SET newUrl=%targetRepoUrl%

git clone --mirror %repoUrl% %targetFolder%
cd %targetFolder%
git remote rm origin
git remote add origin %newUrl%
git push origin --all
git push --tags
cd..