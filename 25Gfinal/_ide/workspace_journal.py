# 2026-05-12T18:04:11.296181600
import vitis

client = vitis.create_client()
client.set_workspace(path="sin_wave_add_v22")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="app_component")
comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

