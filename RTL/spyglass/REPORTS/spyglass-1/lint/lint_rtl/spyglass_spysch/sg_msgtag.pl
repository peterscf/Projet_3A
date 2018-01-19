################################################################################
#This is an internally genertaed by spyglass for Message Tagging Support
################################################################################


        use spyglass;
    use SpyGlass;
    use SpyGlass::Objects;
    spyRebootMsgTagSupport();

    spySetMsgTagCount(95,32);
spyParseTextMessageTagFile("./spyglass-1/lint/lint_rtl/spyglass_spysch/sg_msgtag.txt");

spyMessageTagTestBenchmark(64,"./spyglass-1/lint/lint_rtl/spyglass.vdb");

1;