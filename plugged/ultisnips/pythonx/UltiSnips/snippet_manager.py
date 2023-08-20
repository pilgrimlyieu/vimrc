def _ask_user(a, formatted):
    @err_to_scratch_buffer.wrap
    def expand(self):
        """Try to expand a snippet at the current position."""
        vim_helper.command("let g:ulti_expand_res = 1")
        if not self._try_expand():
            vim_helper.command("let g:ulti_expand_res = 0")
            # self._handle_failure(self.expand_trigger, True)
            # 注释掉以作为唯一 Trigger
