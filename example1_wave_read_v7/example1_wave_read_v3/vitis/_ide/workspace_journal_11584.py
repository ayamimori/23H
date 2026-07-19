# 2026-05-30T14:19:42.109028800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis")

platform = client.get_component(name="platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

status = platform.build()

comp = client.get_component(name="app_component")
status = comp.clean()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

status = comp.clean()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../zynq_system_wrapper.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

