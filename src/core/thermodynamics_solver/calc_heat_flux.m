% Function to calculate heat flux on the surface

function heat_flux = calc_heat_flux(surface_temperature, fluid_temperature)
    % Heat flux is proportional to the difference between surface and fluid temperature
    heat_flux = 100 * (surface_temperature - fluid_temperature);
end
