# 2026-05-25T20:48:32.967961800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

vitis.dispose()

