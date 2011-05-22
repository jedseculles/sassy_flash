function sassyFx() {
  dojo.anim("flash_notice", { opacity: 0 }, 5000);
  dojo.anim("flash_warning", { opacity: 0 }, 5000);
  dojo.anim("flash_error", { opacity: 0 }, 5000);
  dojo.anim("flash_alert", { opacity: 0 }, 5000);
}
    
dojo.addOnLoad(sassyFx);