#appledoc Xcode script

# Start constants
company="testpath1";
companyID="testpath2";
companyURL="http://www.cocos2d-swift.org";
target="iphoneos";
outputPath="api-docs";
# End constants

# Note about ignore list:
# For some reason you can use "--ignore Path" only to ignore files that *end in* Path
# but you can't use "--ignore *Package*" (any wildcard combo) to ignore files that begin with or contain Path.

# Adding ignore items:
# Please try to keep the ignore list sorted alphabetically for easier maintenance.

tools/appledoc \
--project-name "Cocos2D" \
--project-company "3.3.0" \
--company-id "org.cocos2d-swift" \
--docset-atom-filename "cocos2d-swift.atom" \
--docset-feed-url "${companyURL}/${company}/%DOCSETATOMFILENAME" \
--docset-package-url "${companyURL}/${company}/%DOCSETPACKAGEFILENAME" \
--docset-fallback-url "${companyURL}/${company}" \
--output "${outputPath}" \
--publish-docset \
--install-docset \
--docset-platform-family "${target}" \
--logformat xcode \
--no-keep-undocumented-members \
--no-search-undocumented-doc \
--keep-intermediate-files \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--prefix-merged-sections \
--exit-threshold 2 \
--verbose 2 \
--ignore .m \
--ignore _Private.h \
--ignore _frag.h \
--ignore _vert.h \
--ignore base64.h \
--ignore Cache.h \
--ignore CCActionManager.h \
--ignore CCAnimation.h \
--ignore CCAtlasNode.h \
--ignore CCBAnimationManager.h \
--ignore CCBKeyFrame.h \
--ignore CCBLocalizationManager.h \
--ignore CCBReader.h \
--ignore CCBSequence.h \
--ignore CCBSequenceProperty.h \
--ignore CCBuilderReader.h \
--ignore ccConfig.h \
--ignore CCConfiguration.h \
--ignore ccDeprecated.h \
--ignore CCDirectorIOS.h \
--ignore CCDirectorMac.h \
--ignore CCDrawingPrimitives.h \
--ignore CCES2Renderer.h \
--ignore CCESRenderer.h \
--ignore CCFileUtils.h \
--ignore ccFPSImages.h \
--ignore CCGL.h \
--ignore CCGLProgram.h \
--ignore CCGLView.h \
--ignore CCLabelAtlas.h \
--ignore ccMacros.h \
--ignore CCMetalView.h \
--ignore CCNS.h \
--ignore CCPackageCocos2DEnabler.h \
--ignore CCPackageDownload.h \
--ignore CCPackageDownloadDelegate.h \
--ignore CCPackageDownloadManager.h \
--ignore CCPackageDownloadManagerDelegate.h \
--ignore CCPackageInstaller.h \
--ignore CCPackageTypes.h \
--ignore CCPackageUnzipper.h \
--ignore CCPackageUnzipperDelegate.h \
--ignore CCParticleBatchNode.h \
--ignore CCPhysics+ObjectiveChipmunk.h \
--ignore CCProfiling.h \
--ignore CCProtocols.h \
--ignore CCResponderManager.h \
--ignore CCScheduler.h \
--ignore CCShader.h \
--ignore ccShaders.h \
--ignore CCTextureAtlas.h \
--ignore CCTexturePVR.h \
--ignore CCTouch.h \
--ignore ccTypes.h \
--ignore ccUtils.h \
--ignore CCVertex.h \
--ignore CCWindow.h \
--ignore CGPointExtension.h \
--ignore cocos2d-ui.h \
--ignore cocos2d.h \
--ignore NSAttributedString+CCAdditions.h \
--ignore NSThread+performBlock.h \
--ignore NSValue+CCRenderer.h \
--ignore OpenGL_Internal.h \
--ignore TGAlib.h \
--ignore TransformUtils.h \
--ignore UITouch+CC.h \
--ignore uthash.h \
--ignore utlist.h \
--ignore ZipUtils.h \
cocos2d cocos2d-ui
